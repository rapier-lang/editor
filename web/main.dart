import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';
import 'package:rapier_editor/components/rapier_editor/rapier_editor.dart';
import 'package:rapier_editor/services/services.dart';
import 'require.dart';

main() async {
  await loadMonaco();
  bootstrap(RapierEditorComponent, [
    ROUTER_PROVIDERS,
    rapierEditorProviders,
    provide(LocationStrategy, useClass: HashLocationStrategy)
  ]);
}

Future loadMonaco() {
  var c = new Completer();

  void _load() {
    require.config(
      new RequireConfig(
        paths: jsify({
          'vs': 'node_modules/monaco-editor/min/vs',
        }),
      ),
    );

    require(['vs/editor/editor.main'], allowInterop(c.complete),
        allowInterop(c.completeError));
  }

  if (require != null) {
    _load();
  } else {
    var script = new ScriptElement()
      ..type = 'application/javascript'
      ..src = 'node_modules/monaco-editor/min/vs/loader.js';
    script.onLoad.first.then((_) => _load());
    document.body.append(script);
  }

  return c.future;
}

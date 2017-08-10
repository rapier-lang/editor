import 'dart:async';
import 'package:rapier_editor/monaco.dart' as monaco;
import 'package:rapier_lang/src/analysis/analyzer.dart';
import 'promise.dart';

class RapierCompletionItemProvider implements monaco.CompletionItemProvider {
  @override
  List<String> triggerCharacters = ['.'];

  final String filename;

  RapierCompletionItemProvider(this.filename);

  @override
  resolveCompletionItem(
      monaco.CompletionItem item, monaco.CancellationToken token) {}

  @override
  provideCompletionItems(monaco.IReadOnlyModel model, monaco.Position position,
      monaco.CancellationToken token) {
    return promiseFromFuture(completeAsync(model, position, token)).then(([completionItems]) {
      print('Bam: $completionItems');
      return completionItems;
    });
  }

  Future<List<monaco.CompletionItem>> completeAsync(monaco.IReadOnlyModel model,
      monaco.Position position, monaco.CancellationToken token) async {
    var w = model.getWordUntilPosition(position as monaco.IPosition);

    return <monaco.CompletionItem>[
      new monaco.CompletionItem(
        label: w.word,
        kind: monaco.CompletionItemKind.Folder,
      ),
    ];
  }
}

import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:rapier_editor/monaco.dart' as monaco;
import '../../services/file.dart';
import '../../src/rapier_file.dart';
import 'completion.dart';
import 'language.dart';

@Component(
    selector: 'file-editor',
    templateUrl: 'file_editor.html',
    styleUrls: const ['file_editor.css'],
    directives: const [COMMON_DIRECTIVES])
class FileEditorComponent implements OnInit, OnDestroy {
  monaco.IDisposable _completion;
  StreamSubscription<RapierFile> _sub;

  final RapierFileService fileService;

  Element __editor;
  monaco.IStandaloneCodeEditor _codeEditor;

  @ViewChild('editor')
  ElementRef editor;

  FileEditorComponent(this.fileService);

  Element get _editor => __editor ??= editor.nativeElement;

  void fileCallback(RapierFile file) {
    _codeEditor?.dispose();
    _completion?.dispose();

    if (file != null) {
      _completion = monaco.registerCompletionItemProvider(
          'rapier', new RapierCompletionItemProvider(file.filename));
      _codeEditor = monaco.create(
          _editor,
          new monaco.IEditorConstructionOptions(
            value: file.pendingChanges ?? file.contents,
            language: 'rapier',
          ));
    }
  }

  @override
  ngOnInit() {
    // Register new language
    monaco.register(new monaco.ILanguageExtensionPoint(id: 'rapier'));
    monaco.setMonarchTokensProvider('rapier', rapierLanguage);

    fileCallback(fileService.activeFile);
    _sub = fileService.onActivate.listen(fileCallback);
  }

  @override
  ngOnDestroy() {
    _sub.cancel();
  }
}

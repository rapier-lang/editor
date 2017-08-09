import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:rapier_editor/monaco.dart' as monaco;
import '../../services/file.dart';
import '../../src/rapier_file.dart';

@Component(
    selector: 'file-editor',
    templateUrl: 'file_editor.html',
    styleUrls: const ['file_editor.css'],
    directives: const [COMMON_DIRECTIVES])
class FileEditorComponent implements OnInit, OnDestroy {
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

    if (file != null) {
      _codeEditor = monaco.create(
          _editor,
          new monaco.IEditorConstructionOptions(
              value: file.pendingChanges ?? file.contents));
    }
  }

  @override
  ngOnInit() {
    fileCallback(fileService.activeFile);
    _sub = fileService.onActivate.listen(fileCallback);
  }

  @override
  ngOnDestroy() {
    _sub.cancel();
  }
}

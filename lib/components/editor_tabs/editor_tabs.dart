import 'package:angular/angular.dart';
import '../../services/file.dart';
import '../../src/rapier_file.dart';
import '../file_editor/file_editor.dart';
import 'package:angular_router/angular_router.dart';

@Component(
    selector: 'editor-tabs',
    templateUrl: 'editor_tabs.html',
    styleUrls: const [
      'editor_tabs.css'
    ],
    directives: const [
      COMMON_DIRECTIVES,
      ROUTER_DIRECTIVES,
      FileEditorComponent
    ])
class EditorTabsComponent {
  final RapierFileService fileService;

  EditorTabsComponent(this.fileService);

  String computeLabel(RapierFile file) {
    if (file.pendingChanges == null)
      return file.filename;
    else {
      return '${file.filename}*';
    }
  }

  void switchActiveFile(RapierFile file) {
    // TODO: Save current file, if any
    fileService.activeFile = file;
  }
}

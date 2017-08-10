import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import '../../services/file.dart';
import '../../src/rapier_file.dart';
import '../sui_dialog/sui_dialog.dart';

final RegExp _dotRpr = new RegExp(r'\.rpr');

@Component(
    selector: 'landing-screen',
    templateUrl: 'landing_screen.html',
    styleUrls: const [
      'landing_screen.css'
    ],
    directives: const [
      formDirectives,
      COMMON_DIRECTIVES,
      ROUTER_DIRECTIVES,
      SuiDialogComponent
    ])
class LandingScreenComponent {
  final RapierFileService _fileService;
  final Router _router;

  String newFileName, newFileError = '';

  @ViewChild('newFileDialog')
  SuiDialogComponent newFileDialog;

  LandingScreenComponent(this._fileService, this._router);

  void handleNewFile([Event e]) {
    e?.preventDefault();

    try {
      if (newFileName.isNotEmpty) {
        var fn = newFileName.replaceAll(_dotRpr, '') + '.rpr';

        if (_fileService.files.any((f) => f.filename == fn)) {
          throw 'A file named "$fn" already exists.';
        }

        _fileService.files.insert(
            0,
            _fileService.activeFile = new RapierFile(fn)
              ..pendingChanges = '''
// ... What are you waiting for? Get coding!
fn main():void {
  print("Hello, world!");
}
'''
                  .trim());
        _router.navigate(['../Edit']);
      }
    } catch (e) {
      newFileError = e.toString();
    }
  }
}

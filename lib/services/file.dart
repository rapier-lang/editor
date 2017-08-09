import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import '../src/rapier_file.dart';

@Injectable()
class RapierFileService {
  final StreamController<RapierFile> _active =
      new StreamController<RapierFile>.broadcast();
  RapierFile _activeFile;

  // TODO: Load from localStorage
  final List<RapierFile> files = [];

  RapierFileService() {
    applyChanges();
  }

  RapierFile get activeFile => _activeFile;

  void set activeFile(RapierFile v) {
    _active.add(_activeFile = v);
  }

  Stream<RapierFile> get onActivate => _active.stream;

  void saveAll() {
    for (var file in files) {
      file.contents = file.pendingChanges ?? file.contents;
    }

    applyChanges();
  }

  void saveFile(RapierFile file) {
    file.contents = file.pendingChanges ?? file.contents;
    applyChanges();
  }

  void applyChanges() {
    window.indexedDB.open('rapier_editor').then((idb) async {
      idb.createObjectStore('files', keyPath: 'filename');

      var tx = idb.transaction('rapier_editor', 'readwrite');
      var store = tx.objectStore('files');
      var all = await store.getAll(null);
      print(all.result);
    });
  }
}

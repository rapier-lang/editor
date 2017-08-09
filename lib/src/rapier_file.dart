class RapierFile {
  final String filename;
  String contents, pendingChanges;

  RapierFile(this.filename, {this.contents: ''});
}
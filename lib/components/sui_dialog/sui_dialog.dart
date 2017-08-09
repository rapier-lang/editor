import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';

@Component(selector: 'sui-dialog', templateUrl: 'sui_dialog.html')
class SuiDialogComponent implements OnDestroy {
  bool _active = false;
  int _clientHeight;

  final StreamController _ok = new StreamController(),
      _cancel = new StreamController();

  @ViewChild('modal')
  ElementRef modal;

  @Input()
  String title;

  @Output()
  Stream get ok => _ok.stream;

  @Output()
  Stream get cancel => _cancel.stream;

  bool get isActive => _active;

  @override
  ngOnDestroy() {
    _ok.close();
    _cancel.close();
  }

  String computeMarginTop() {
    if (!isActive) return 'initial';

    if (_clientHeight == null) {
      var el = modal.nativeElement as Element;
      _clientHeight = el.clientHeight;
    }
    return '-${_clientHeight}px';
  }

  void handleOk() => _ok.add(null);

  void handleCancel() => _cancel.add(null);

  void open() {
    _active = true;
  }

  void close() {
    _active = false;
  }

  void toggle() {
    _active = !_active;
  }
}

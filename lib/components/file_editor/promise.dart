@JS()
library promise;

import 'dart:async';
import 'dart:html';
import 'package:func/func.dart';
import 'package:js/js.dart';

@JS()
class Promise<T> {
  external factory Promise(VoidFunc2<VoidFunc1<T>, VoidFunc1> callback);

  external void then(Func1Opt1<T, dynamic> callback);

  @JS('catch')
  external void catchError(Func1 callback);
}

Promise<T> promiseFromFuture<T>(Future<T> f) {
  return new Promise<T>(allowInterop((resolve, reject) {
    window.console.log(resolve);
    f.then(resolve).catchError(reject);
  }));
}

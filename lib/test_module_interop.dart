@JS()
library test_module_interop;

import 'package:js/js.dart';

@JS('TestModule.MyClass')
class MyClass {
  external factory MyClass();

  external void open();
}
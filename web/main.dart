import 'package:angular2/core.dart';
import 'package:angular2/platform/browser.dart';
import 'package:angular2_js_interop/test_module_interop.dart' as TestModule;

@Component(
    selector: 'my-app',
    template: '<button (click)="open()">Click me to see wonderous things!</button>')
class AppComponent {
  void open() {
    new TestModule.MyClass().open();
  }
}

void main() {
  bootstrap(AppComponent);
  // uncommenting the following line magically makes the issue go away
  //   new TestModule.MyClass().open();
}

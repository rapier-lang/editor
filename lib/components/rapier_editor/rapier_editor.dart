import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import '../editor_tabs/editor_tabs.dart';
import '../landing_screen/landing_screen.dart';

@Component(
    selector: 'rapier-editor',
    templateUrl: 'rapier_editor.html',
    directives: const [ROUTER_DIRECTIVES])
@RouteConfig(const [
  const Route(
      path: '/',
      name: 'Landing',
      component: LandingScreenComponent,
      useAsDefault: true),
  const Route(
    path: '/edit',
    name: 'Edit',
    component: EditorTabsComponent,
  )
])
class RapierEditorComponent {}

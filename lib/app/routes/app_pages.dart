import 'package:aoo_ui_using_getx/app/routes/app_routes.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import 'package:get/get.dart';

class AppPages {
  static const INITIAL = AppRoutes.HOME;

  static final routes = [
    GetPage(
        name: AppRoutes.HOME, page: () => HomeView(), binding: HomeBinding())
  ];
}

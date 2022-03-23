
import 'package:scalande_project/presentation/views/edit/edit_view.dart';
import 'package:scalande_project/presentation/views/edit/edit_view_controller_bindings.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'routes.dart';

class Nav {
  static List<GetPage> routes = [
    /// REVIEW [Mobile & Web] routes
    GetPage(
      name: Routes.EDIT,
      page: () => EditView(),
      binding: EditViewControllerBindings(),
    ),
  ];
}

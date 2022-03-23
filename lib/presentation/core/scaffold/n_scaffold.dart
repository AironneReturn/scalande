// import 'package:exchange_project/presentation/core/widgets/bottom_nav_bar/bottom_nav_bar.dart';
// import 'package:exchange_project/presentation/core/widgets/n_app_bar.dart';
// import 'package:exchange_project/presentation/navigation/routes.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class NScaffold extends StatefulWidget {
//   final Widget body;
//   final int index;
//   final bool cantreturn;

//   const NScaffold({
//     Key key,
//     @required this.body,
//     @required this.index,
//     this.cantreturn,
//   }) : super(key: key);

//   @override
//   State<NScaffold> createState() => _NScaffoldState();
// }

// class _NScaffoldState extends State<NScaffold> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: NAppBar(
//         cantreturn: widget.cantreturn ?? false,
//       ),
//       // AppBar(
//       //   title: Image.asset(
//       //     'assets/logo/templogo.png',
//       //     height: 20,
//       //   ),
//       //   foregroundColor: Get.theme.colorScheme.secondary,
//       //   actions: [
//       //     Padding(
//       //       padding: const EdgeInsets.only(right: 18.0),
//       //       child: IconButton(
//       //         onPressed: () {
//       //           Get.toNamed(Routes.PROFILE);
//       //         },
//       //         icon: Icon(
//       //           Icons.person,
//       //           size: 30,
//       //         ),
//       //       ),
//       //     )
//       //   ],
//       // ),
//       bottomNavigationBar: NavigationActionBar(
//         context: context,
//         scaffoldColor: Get.theme.backgroundColor,
//         index: widget.index,
//         accentColor: Get.theme.colorScheme.secondary,
//         subItems: [
//           NavBarItem(iconData: Icons.attach_file, size: 25),
//           NavBarItem(
//             iconData: Icons.photo,
//             size: 25,
//           ),
//           NavBarItem(iconData: Icons.camera_alt, size: 25),
//         ],
//         mainIndex: 1,
//         items: [
//           NavBarItem(
//               iconData: Icons.location_on,
//               size: 35,
//               selectedColor: Get.theme.colorScheme.secondary,
//               unselectedColor:
//                   Get.theme.colorScheme.secondary.withOpacity(0.4)),
//           NavBarItem(
//               iconData: Icons.shopping_basket,
//               size: 45,
//               unselectedColor: Get.theme.colorScheme.primary,
//               selectedColor: Get.theme.colorScheme.primary),
//           NavBarItem(
//               iconData: Icons.format_list_bulleted,
//               size: 35,
//               selectedColor: Get.theme.colorScheme.secondary,
//               unselectedColor:
//                   Get.theme.colorScheme.secondary.withOpacity(0.4)),
//         ],
//         onTap: (index) {
//           int i = index.toInt();

//           switch (i) {
//             case 0:
//               Get.offAndToNamed(Routes.MAP);
//               break;
//             case 1:
//               Get.toNamed(Routes.MYSHOP);
//               break;
//             case 2:
//               Get.offAndToNamed(Routes.LISTCUSTOMER);
//               break;
//           }
//         },
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             Expanded(
//                 child: Container(
//                     color: Get.theme.backgroundColor, child: widget.body)),
//             // bottomNavBar(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget bottomNavBar() {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 10,
//             blurRadius: 20,
//             offset: Offset(0, 0), // changes position of shadow
//           ),
//         ],
//       ),
//       height: 65,
//       width: Get.width,
//       child: Row(
//         children: [
//           Expanded(
//               child: InkWell(
//             onTap: () {
//               if (widget.index != 0) {
//                 Get.offAndToNamed(Routes.MAP);
//               }
//             },
//             child: Center(
//               child: Icon(
//                 Icons.location_on,
//                 size: 35,
//                 color: widget.index == 0
//                     ? Colors.black
//                     : Colors.black.withOpacity(0.5),
//               ),
//             ),
//           )),
//           Expanded(
//               child: InkWell(
//             onTap: () {
//               if (widget.index != 1) {
//                 Get.offAndToNamed(Routes.LISTCUSTOMER);
//               }
//             },
//             child: Center(
//               child: Icon(
//                 Icons.format_list_bulleted,
//                 size: 35,
//                 color: widget.index == 1
//                     ? Colors.black
//                     : Colors.black.withOpacity(0.5),
//               ),
//             ),
//           )),
//         ],
//       ),
//     );
//   }
// }

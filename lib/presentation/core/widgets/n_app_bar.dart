// import 'package:exchange_project/presentation/navigation/routes.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class NAppBar extends AppBar {
//   final String titleText;
//   final bool cantreturn;

//   NAppBar({
//     Key key,
//     this.titleText,
//     this.cantreturn = false,
//   }) : super();

//   @override
//   State<NAppBar> createState() => _NAppBarState();
// }

// class _NAppBarState extends State<NAppBar> {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       foregroundColor: Get.theme.colorScheme.secondary,
//       title: widget.titleText != null
//           ? Text(
//               widget.titleText,
//             )
//           : Image.asset(
//               'assets/logo/templogo.png',
//               height: 20,
//             ),
//       backgroundColor: Get.theme.colorScheme.primary,
//       leading: !widget.cantreturn
//           ? IconButton(
//               onPressed: () {
//                 Get.back();
//               },
//               icon: Icon(
//                 Icons.arrow_back_ios,
//               ),
//             )
//           : null,
//       actions: [
//         Padding(
//           padding: const EdgeInsets.only(right: 18.0),
//           child: IconButton(
//             onPressed: () {
//               Get.toNamed(Routes.PROFILE);
//             },
//             icon: Icon(
//               Icons.person,
//               size: 30,
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }

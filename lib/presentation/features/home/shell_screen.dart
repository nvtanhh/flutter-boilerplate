// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// import '../../../core/constants/route_constants.dart';
// import '../../../core/extensions/extensions.dart';
// import '../../common_widgets/app_icon.dart';

// const _tabPages = [
//   RouteConstants.songTab,
//   RouteList.dictionaryTab,
//   RouteList.accountTab,
// ];

// class ShellScreen extends StatelessWidget {
//   const ShellScreen({
//     required this.child,
//     required this.location,
//     super.key,
//   });

//   final Widget child;
//   final String location;

//   void _onTap(BuildContext context, int index) {
//     final selectedIndex = _getLocation(location);
//     if (selectedIndex == index) {
//       return;
//     }

//     context.go(_tabPages[index]);
//   }

//   int _getLocation(String location) {
//     return _tabPages.indexOf(location);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: child,
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.white,
//         currentIndex: _getLocation(location),
//         items: [
//           BottomNavigationBarItem(
//             icon: const Icon(AppIcons.musicNoteOutline),
//             activeIcon: const Icon(AppIcons.musicNote),
//             label: context.l10n.songs__title,
//           ),
//           BottomNavigationBarItem(
//             icon: const Icon(AppIcons.menuBookOutline),
//             activeIcon: const Icon(AppIcons.menuBook),
//             label: context.l10n.dictionary__title,
//           ),
//           BottomNavigationBarItem(
//             icon: const Icon(AppIcons.personOutline),
//             activeIcon: const Icon(AppIcons.person),
//             label: context.l10n.account__title,
//           ),
//         ],
//         onTap: (index) => _onTap(context, index),
//       ),
//     );
//   }
// }

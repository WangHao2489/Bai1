// import "package:flutter/material.dart";
//
// class Myappbar extends StatefulWidget {
//   const Myappbar({super.key});
//
//   @override
//   State<Myappbar> createState() => _MyappbarState();
// }
//
// class _MyappbarState extends State<Myappbar> {
//   final List<String> items = [
//     'Item1',
//     'Item2',
//     'Item3',
//     'Item4',
//   ];
//   String? selectedValue;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: DropdownButtonHideUnderline(
//           child: Drop<String>(
//             isExpanded: true,
//             hint: Text(
//               'Select Item',
//               style: TextStyle(
//                 fontSize: 14,
//                 color: Theme.of(context).hintColor,
//               ),
//             ),
//             items: items
//                 .map((String item) => DropdownMenuItem<String>(
//               value: item,
//               child: Text(
//                 item,
//                 style: const TextStyle(
//                   fontSize: 14,
//                 ),
//               ),
//             ))
//                 .toList(),
//             value: selectedValue,
//             onChanged: (String? value) {
//               setState(() {
//                 selectedValue = value;
//               });
//             },
//             buttonStyleData: const Button(
//               padding: EdgeInsets.symmetric(horizontal: 16),
//               height: 40,
//               width: 140,
//             ),
//             menuItemStyleData: const MenuItemStyleData(
//               height: 40,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//

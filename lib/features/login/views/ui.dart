// import 'package:flutter/material.dart';

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: UI(),
//     );
//   }
// }

// class UI extends StatelessWidget {
//   const UI({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'La Liga Standings',
//       theme: ThemeData.dark(),
//       home: Container(),
//     );
//   }
// }

// class LaLigaStandingsScreen extends StatelessWidget {
//   const LaLigaStandingsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {},
//         ),
//         title: const Row(
//           children: [
//             Text('المجموعات'),
//           ],
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             const SizedBox(height: 20),
//             _buildLaLigaLogo(),
//             const SizedBox(height: 20),
//             _buildTabButtons(),
//             const SizedBox(height: 20),
//             _buildStandingsTable(),
//             const SizedBox(height: 20),
//             _buildStandingsTable(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildLaLigaLogo() {
//     return Container(
//       width: 100,
//       height: 100,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: Colors.grey[800],
//       ),
//       child: const Center(
//           // child: Image.network(
//           //   'https://upload.wikimedia.org/wikipedia/en/thumb/1/13/LaLiga.svg/1200px-LaLiga.svg.png',
//           //   width: 60,
//           //   height: 60,
//           // ),
//           ),
//     );
//   }

//   Widget _buildTabButtons() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         ElevatedButton(
//           onPressed: () {},
//           style: ElevatedButton.styleFrom(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//           ),
//           child: const Text('All'),
//         ),
//         const SizedBox(width: 10),
//         ElevatedButton(
//           onPressed: () {},
//           style: ElevatedButton.styleFrom(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//           ),
//           child: const Text('Home'),
//         ),
//         const SizedBox(width: 10),
//         ElevatedButton(
//           onPressed: () {},
//           style: ElevatedButton.styleFrom(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//           ),
//           child: const Text('away'),
//         ),
//       ],
//     );
//   }

//   Widget _buildStandingsTable() {
//     final headers = ['#', 'Team', 'D', 'L', 'Ga', 'Gd', 'Pts'];
//     final teams = [
//       ['1', 'Atlético Madrid', '2', '1', '6', '23', '38'],
//       ['2', 'Real Madrid', '4', '3', '7', '15', '37'],
//       ['3', 'Barcelona', '4', '4', '9', '20', '34'],
//       ['4', 'Villareal', '8', '2', '10', '16', '32'],
//       ['5', 'Real Sociedad', '6', '5', '13', '13', '30'],
//       ['6', 'Sevilla', '3', '4', '15', '12', '30'],
//       ['7', 'Granada', '3', '7', '20', '11', '24'],
//     ];

//     return Expanded(
//       child: ListView(
//         children: [
//           Table(
//             columnWidths: const {
//               0: FlexColumnWidth(1),
//               1: FlexColumnWidth(3),
//               2: FlexColumnWidth(1),
//               3: FlexColumnWidth(1),
//               4: FlexColumnWidth(1),
//               5: FlexColumnWidth(1),
//               6: FlexColumnWidth(1),
//             },
//             children: [
//               TableRow(
//                 children: headers
//                     .map((header) => TableCell(
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(vertical: 8),
//                             child: Text(header,
//                                 style: const TextStyle(
//                                     fontWeight: FontWeight.bold)),
//                           ),
//                         ))
//                     .toList(),
//               ),
//               ...teams.asMap().entries.map((entry) {
//                 final index = entry.key;
//                 final team = entry.value;
//                 return TableRow(
//                   decoration: BoxDecoration(
//                     color: index < 4
//                         ? Colors.blue[900]
//                         : index < 6
//                             ? Colors.red[900]
//                             : null,
//                   ),
//                   children: team.asMap().entries.map((cellEntry) {
//                     final cellIndex = cellEntry.key;
//                     final cell = cellEntry.value;
//                     return TableCell(
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 12),
//                         child: Text(
//                           cell,
//                           style: TextStyle(
//                             fontWeight: cellIndex == 1
//                                 ? FontWeight.bold
//                                 : FontWeight.normal,
//                           ),
//                         ),
//                       ),
//                     );
//                   }).toList(),
//                 );
//               }),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// Widget _buildStandingsTable_2() {
//   final headers = ['#', 'Team', 'D', 'L', 'Ga', 'Gd', 'Pts'];
//   final teams = [
//     ['1', 'Atlético Madrid', '2', '1', '6', '23', '38'],
//     ['2', 'Real Madrid', '4', '3', '7', '15', '37'],
//     ['3', 'Barcelona', '4', '4', '9', '20', '34'],
//     ['4', 'Villareal', '8', '2', '10', '16', '32'],
//     ['5', 'Real Sociedad', '6', '5', '13', '13', '30'],
//     ['6', 'Sevilla', '3', '4', '15', '12', '30'],
//     ['7', 'Granada', '3', '7', '20', '11', '24'],
//   ];

//   return Expanded(
//     child: ListView(
//       children: [
//         Table(
//           columnWidths: const {
//             0: FlexColumnWidth(1),
//             1: FlexColumnWidth(3),
//             2: FlexColumnWidth(1),
//             3: FlexColumnWidth(1),
//             4: FlexColumnWidth(1),
//             5: FlexColumnWidth(1),
//             6: FlexColumnWidth(1),
//           },
//           children: [
//             TableRow(
//               children: headers
//                   .map((header) => TableCell(
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(vertical: 8),
//                           child: Text(header,
//                               style:
//                                   const TextStyle(fontWeight: FontWeight.bold)),
//                         ),
//                       ))
//                   .toList(),
//             ),
//             ...teams.asMap().entries.map((entry) {
//               final index = entry.key;
//               final team = entry.value;
//               return TableRow(
//                 decoration: BoxDecoration(
//                   color: index < 4
//                       ? Colors.blue[900]
//                       : index < 6
//                           ? Colors.red[900]
//                           : null,
//                 ),
//                 children: team.asMap().entries.map((cellEntry) {
//                   final cellIndex = cellEntry.key;
//                   final cell = cellEntry.value;
//                   return TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 12),
//                       child: Text(
//                         cell,
//                         style: TextStyle(
//                           fontWeight: cellIndex == 1
//                               ? FontWeight.bold
//                               : FontWeight.normal,
//                         ),
//                       ),
//                     ),
//                   );
//                 }).toList(),
//               );
//             }),
//           ],
//         ),
//       ],
//     ),
//   );
// }

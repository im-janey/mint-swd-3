// import 'package:flutter/material.dart';

// import 'modal.dart';

// class Cos extends StatefulWidget {
//   const Cos({super.key});

//   @override
//   _CosState createState() => _CosState();
// }

// class _CosState extends State<Cos> with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   final TextEditingController _textController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('코스'),
//         bottom: TabBar(
//           controller: _tabController,
//           tabs: const [
//             Tab(text: '내 코스'),
//             Tab(text: '다른 사람의 코스'),
//           ],
//           labelColor: Theme.of(context).primaryColor,
//           unselectedLabelColor: Colors.black26,
//           indicatorColor: Theme.of(context).primaryColor,
//           indicatorWeight: 3,
//           indicatorSize: TabBarIndicatorSize.label,
//           labelStyle: const TextStyle(fontWeight: FontWeight.bold),
//           unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(height: 15),
//                 Container(
//                   width: double.infinity,
//                   padding: const EdgeInsets.all(16.0),
//                   decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           foregroundColor: Colors.white,
//                           backgroundColor: Theme.of(context).primaryColor,
//                           shape: const CircleBorder(
//                             side: BorderSide(
//                               color: Colors.white,
//                               width: 2.5,
//                             ),
//                           ),
//                           padding: const EdgeInsets.all(7),
//                         ),
//                         onPressed: () {
//                           _showCourseCreationModal(context);
//                         },
//                         child: const Icon(Icons.add, size: 30),
//                       ),
//                       const SizedBox(width: 20),
//                       const Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             '내 코스 만들기',
//                             style: TextStyle(
//                                 fontSize: 14, fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             '새로운 코스를 만들고 떠나보세요',
//                             style: TextStyle(fontSize: 11),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 25),
//                 const Text(
//                   ' 이전 코스',
//                   textAlign: TextAlign.left,
//                   style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
//                 ),
//                 const SizedBox(height: 10),
//                 Expanded(
//                   child: ListView(
//                     children: const [
//                       CustomListTile(
//                         imageUrl: '',
//                         title: '성수동데이트',
//                         subtitle: '2024.8.29',
//                       ),
//                       // Add more ListTiles here
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Center(
//             child: Padding(
//               padding: const EdgeInsets.only(right: 20, left: 20, top: 40),
//               child: Column(
//                 children: [
//                   TextField(
//                     controller: _textController,
//                     decoration: InputDecoration(
//                       labelText: '원하는 장소를 검색해보세요',
//                       labelStyle: TextStyle(color: Colors.black),
//                       enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.black),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.black),
//                       ),
//                       suffixIcon: Icon(Icons.search, color: Colors.black),
//                       contentPadding: EdgeInsets.symmetric(
//                           vertical: 10.0, horizontal: 15.0),
//                     ),
//                     cursorColor: Theme.of(context).primaryColor,
//                   ),
//                   const SizedBox(height: 20),
//                   Expanded(
//                     child: ListView(
//                       children: const [
//                         // Add more ListTiles here
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _showCourseCreationModal(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return Modal();
//       },
//     );
//   }
// }

// class CustomListTile extends StatelessWidget {
  

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: CircleAvatar(
//         backgroundImage: NetworkImage(imageUrl),
//       ),
//       title: Text(title),
//       subtitle: Text(subtitle),
//       trailing: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           IconButton(
//             icon: const Icon(Icons.delete_outline, size: 20),
//             onPressed: () {
//               // 클릭 시 실행될 동작
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

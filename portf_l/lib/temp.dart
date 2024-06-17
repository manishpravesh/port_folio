// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:portf_l/color.dart';

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final part1Key = GlobalKey();
//   final part2Key = GlobalKey();
//   final part3Key = GlobalKey();
//   final part4Key = GlobalKey();
//   final scrollController = ScrollController();
//   int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: tdBGColor,
//       appBar: AppBar(backgroundColor: Colors.purple,),
//       body: SingleChildScrollView(
//         controller: scrollController,
//         child: Column(
//           children: [

//             // part1
//             Container(
//               key: part1Key,
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Align(alignment: Alignment.centerLeft,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: Text('Manish Kumar', style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500)),
//                     )),
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text('Flutter Developer', style: TextStyle(fontSize: 22),),
//                   ),
//                   Padding(
//                       padding: const EdgeInsets.only(left: 3, bottom: 6, top: 4),
//                       child: Text('I specialize in creating high-quality mobile applications using Flutter. I have worked on several projects, developing intuitive and user-friendly mobile applications that address real-world problems' ,style: TextStyle(fontSize: 17),)
//                   ),
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 40,top: 5),
//                       child: ElevatedButton(onPressed: (){},
//                         child: Text('Contact me')),
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             // part2
//             Container(
//               key: part2Key,
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Center(
//                     child: Card(
//                       elevation: 60,
//                       borderOnForeground: true,
//                       shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
//                       color: tdBlue,
//                       child: Container(
//                         height: 250,
//                         width: 250,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             // part3
//             Container(
//               key: part3Key,
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 19, right: 55),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('More   ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
//                         Text('About Me', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),)
//                       ],
//                     ),
//                   ),
//                   Padding(
//                       padding: const EdgeInsets.only(left: 3, top: 3, bottom: 25),
//                       child: Text('As an Electronics and Communications student at IIIT Bhagalpur, I’m driven by a passion for technology and innovation, with a keen focus on Machine Learning and Data Science. I’m captivated by the transformative potential of these fields and I am always on the lookout for opportunities to apply my knowledge in practical ways which can make a real-world impact. Always exploring, always learning.',style: TextStyle(fontSize: 16),),
//                   ),
//                 ],
//               ),
//             ),

//             // part4
//             Container(
//               key: part4Key,
//               child: Column(
//                 children: [
//                   Container(
//                     height: 300,
//                     width: 300,
//                     decoration: BoxDecoration(
//                       color: color1,
//                       borderRadius: BorderRadius.all(Radius.circular(20)),
//                     ),
//                     child: ListTile(),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Part 1',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Part 2',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'Part 3',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Part 4',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: (index) {
//           setState(() {
//             _selectedIndex = index;
//             switch (index) {
//               case 0:
//                 Scrollable.ensureVisible(part1Key.currentContext!, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
//                 break;
//               case 1:
//                 Scrollable.ensureVisible(part2Key.currentContext!, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
//                 break;
//               case 2:
//                 Scrollable.ensureVisible(part3Key.currentContext!, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
//                 break;
//               case 3:
//                 Scrollable.ensureVisible(part4Key.currentContext!, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
//                 break;
//             }
//           });
//         },
//       ),
//     );
//   }
// }

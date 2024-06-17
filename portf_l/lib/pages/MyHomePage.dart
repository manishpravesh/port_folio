// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portf_l/color.dart';

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
final homeK = GlobalKey();

final aboutK = GlobalKey();

final eduK = GlobalKey();

final part4Key = GlobalKey();

final scrollController = ScrollController();

int _selectedIndex = 0;

  @override
void initState() {
  super.initState();
  scrollController.addListener(() {
    double homeHeight = homeK.currentContext!.size!.height;
    double aboutHeight = aboutK.currentContext!.size!.height;
    double eduHeight = eduK.currentContext!.size!.height;
    double part4Height = part4Key.currentContext!.size!.height;

    if (scrollController.offset >= (homeHeight + aboutHeight + eduHeight)) {
      setState(() {
        _selectedIndex = 3;
      });
    } else if (scrollController.offset >= (homeHeight + aboutHeight)) {
      setState(() {
        _selectedIndex = 2;
      });
    } else if (scrollController.offset >= homeHeight) {
      setState(() {
        _selectedIndex = 1;
      });
    } else {
      setState(() {
        _selectedIndex = 0;
      });
    }
  });
}


  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: tdBGColor,
    
          
    body: SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: [
          
          Container(
            key: homeK,
            child: Column(
            // part1
            children: [
               SizedBox(
              height: 40,
            ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Text('Manish Kumar', style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500)),
                )),
            SizedBox(
              height: 20,
            ),
            
            Align(
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white70,
              ),
              
              child: Text('Flutter Developer', style: TextStyle(fontSize: 22),)),
            ),
                     Padding(
             padding: const EdgeInsets.only(left: 3, bottom: 6, top: 4),
             child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white70
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('I specialize in creating high-quality mobile applications using Flutter. I have worked on several projects, developing intuitive and user-friendly mobile applications that address real-world problems' ,style: TextStyle(fontSize: 17),),
              ))
                     ),
                  
                     Align(
            alignment: Alignment.centerLeft,
             child: Padding(
               padding: const EdgeInsets.only(left: 40,top: 5),
               child: ElevatedButton(onPressed: (){
               
               },
                child: Text('Contact me')),
             ),
                     ),]
            ),
          ),
      
      
      // part2

      Container(
        key: aboutK,
        child: Column(
          children: [
        
           SizedBox(
            height: 20,
           ),
        
              Center(
              child: Card(
                elevation: 60,
                borderOnForeground: true
                ,
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
                color: tdBlue,
                child: Container(
                  height: 250,
                  width: 250,
                  child: Image.asset('assets/images/prof.png'),
                  ),
              ),
            ), 
        
        
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 5,top: 30,bottom: 10),
                width: 300,
                child: ListTile(
                  tileColor: Colors.white,
                  leading: Icon(Icons.person),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  title:  Row(
                    children: [
                      Text('More   ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
                      Text('About Me', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3, top: 3, bottom: 25),
              child: Text('As an Electronics and Communications student at IIIT Bhagalpur, I’m driven by a passion for technology and innovation, with a keen focus on Machine Learning and Data Science. I’m captivated by the transformative potential of these fields and I am always on the lookout for opportunities to apply my knowledge in practical ways which can make a real-world impact. Always exploring, always learning.',style: TextStyle(fontSize: 16),),
            ),
          ]),
      ),

// part3
          Container(
            key: eduK,
            child: Column(
              children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width:370,
                margin: EdgeInsets.only(left: 10, top: 10,bottom: 5),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  tileColor: Colors.white,
                  leading: Icon(Icons.school),
                  title: Text('Educational Qualifications', style: TextStyle(fontSize: 23,color: tdBlack,),),
              
                )
                ),
            ),
            
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.only(left: 8,top: 10,bottom: 10,right: 10),
                
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white70,
                
                ),
                child: Column(
                  children: [
                    ListTile(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                      tileColor: Colors.white,
                      leading: Icon(Icons.circle,size: 12,),
                      title: Text('High Schooling(10+2) - HCS Bokaro , Science(PCM), CBSE',style: TextStyle(fontSize: 18),),
                    ),
            
                    ListTile(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    ),
                      tileColor: Colors.white,
                      leading: Icon(Icons.circle,size: 12,),
                      title: Text('B-Tech - IIIT Bhagalpur, Electronics and Commnication Engineering',style: TextStyle(fontSize: 18)),
                    ),
                    ],
                ),
                
              ),
            ),
              ]),
          ),

//  SKILLS--------------
//part 4
        Container(
          key: part4Key,
          child: Column(
            children: [
          
            Align(
              alignment: Alignment.center,
              child: Container(
                width:160,
                margin: EdgeInsets.only(left: 0, top: 35,bottom: 5),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  tileColor: Colors.white,
                  leading: Icon(Icons.book),
                  title: Text('Skills', style: TextStyle(fontSize: 26,color: tdBlack,),),
              
                )
                ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width:360,
                margin: EdgeInsets.only(left: 10, top: 10,bottom: 0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  tileColor: Colors.white,
                  leading: Icon(Icons.book),
                  title: Text('Programming Languages', style: TextStyle(fontSize: 22,color: tdBlack,),),
              
                )
                ),
            ),
          
            Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(left: 8, top: 2, bottom: 10, right: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white70,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 9),
                child: Column(
          children: [
            Row(
              children: [
                Expanded( flex: 2,
                  child: Row( 
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.circle, size: 8,),
                      Text(' Java', style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.circle, size: 8,),
                      Text(' Python', style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ],
            )
            ,Row(
              children: [
                Expanded( flex: 2,
                  child: Row( 
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.circle, size: 8,),
                      Text(' C/C++', style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.circle, size: 8,),
                      Text(' Dart', style: TextStyle(fontSize: 20),),
                      SizedBox(width: 20,)
                    ],
                  ),
                ),
              ],
            )
            ,Row(
              children: [
                Expanded( flex: 2,
                  child: Row( 
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.circle, size: 8,),
                      Text(' SQL', style: TextStyle(fontSize: 20),),
                      SizedBox(
                        width: 90,
                      )
                    ],
                  ),
                ),
                
              ],
            )
            ,
          ],
                ),
              ),
            ),
          ),
          
          
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width:300,
                margin: EdgeInsets.only(left: 10, top: 10,bottom: 0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  tileColor: Colors.white,
                  leading: Icon(Icons.book),
                  title: Text('Development', style: TextStyle(fontSize: 22,color: tdBlack,),),
              
                )
                ),
            ),
          
             Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(left: 8, top: 2, bottom: 10, right: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white70,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 9),
                child: Column(
          children: [
            Row(
              children: [
                Expanded( flex: 2,
                  child: Row( 
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.circle, size: 8,),
                      Text(' HTML', style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.circle, size: 8,),
                      Text(' CSS/Tailwind', style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ],
            )
            ,Row(
              children: [
                Expanded( flex: 3,
                  child: Row( 
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Icon(Icons.circle, size: 8,),
                      Text(' Javascript', style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.circle, size: 8,),
                      Text(' Flutter', style: TextStyle(fontSize: 20),),
                      SizedBox(width: 90,)
                    ],
                  ),
                ),
              ],
            )
            ,Row(
              children: [
                Expanded( flex: 2,
                  child: Row( 
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.circle, size: 8,),
                      Text(' SpringBoot', style: TextStyle(fontSize: 20),),
                      SizedBox(
                        width: 90,
                      )
                    ],
                  ),
                ),
                
              ],
            )
            ,
          ],
                ),
              ),
            ),
          ),
          
          // ---projects
          
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width:370,
                margin: EdgeInsets.only(left: 10, top: 40,bottom: 5),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  tileColor: Colors.white,
                  leading: Icon(Icons.book),
                  title: Text('Projects', style: TextStyle(fontSize: 23,color: tdBlack,),),
              
                )
                ),
            ),
          
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.only(left: 8,top: 10,bottom: 10,right: 10),
                
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white70,
                
                ),
                child: Column(
                  children: [
                    ListTile(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                      tileColor: Colors.white70,
                      leading: Icon(Icons.circle,size: 12,),
                      title: Text('Todo App- Functional Todo app made with Flutter and Hive. ',style: TextStyle(fontSize: 18),),
                    ),
          
                     Text('Working On Them....',style: TextStyle(fontSize: 18)),
                    
                    ],
                ),
                
              ),
            ),]),
        ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: 5,top: 30,bottom: 2),
              width: 300,
              child: ListTile(
                tileColor: Colors.white,
                leading: Icon(Icons.phone_android_sharp),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                title:  Row(
                  children: [
                    Text('TO   ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
                    Text('Get In Touch', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              
              margin: EdgeInsets.only(left: 10, top: 0,bottom: 0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                tileColor: Colors.white70,
                leading: Icon(Icons.mail_rounded),
                title: Text('mksmanish36@gmail.com', style: TextStyle(fontSize: 20,color: tdBlack,),),
            
              )
              ),
          ),

          SizedBox(
            height: 80,
          )
      
          ],
      ),
    ),
          bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_rounded),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: tdBlue,
        unselectedItemColor: tdGrey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 28,

        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            switch (index) {
              case 0:
                Scrollable.ensureVisible(homeK.currentContext!, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
                break;
              case 1:
                Scrollable.ensureVisible(aboutK.currentContext!, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
                break;
              case 2:
                Scrollable.ensureVisible(eduK.currentContext!, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
                break;
              case 3:
                Scrollable.ensureVisible(part4Key.currentContext!, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
                break;
            }
          });
        },
      ),

   );
  }
}
// import 'dart:async';
// import 'dart:convert';
// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:todo/utils/loginScreen.dart';

// import 'dart:async';
// import 'dart:convert';
// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:todo/utils/loginScreen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List<UserModel> userList = []; // Declare a list to store API data
//   int _itemCount = 3;
//   final TextEditingController descriptionController = TextEditingController();

//   Future<void> logoutApi() async {
//     Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(builder: (context) => const LoginScreen()),
//     );
//   }

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('A    T O D O'),
//         leading: GestureDetector(
//           onTap: () {
//             logoutApi();
//             print("logout");
//           },
//           child: Icon(Icons.logout_rounded),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(28.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Today's task",
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 8.0, bottom: 22),
//                 child: SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.66,
//                   child: userList.length == 0
//                       ? Text("Write a task and press +")
//                       : ListView.builder(
//                           physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
//                           itemCount: userList.length,
//                           itemBuilder: (context, index) {
//                             final task = userList[index];
//                             return Dismissible(
//                               background: slideLeftBackground(),
//                               key: UniqueKey(),
//                               onDismissed: (direction) {
//                                 // Handle dismiss action if needed
//                               },
//                               child: Padding(
//                                 padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(16),
//                                     color: Colors.white,
//                                   ),
//                                   child: Row(
//                                     children: [
//                                       Flexible(
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(22.0),
//                                           child: Text(
//                                             task.description,
//                                             maxLines: 1,
//                                             overflow: TextOverflow.ellipsis,
//                                             style: task.complete
//                                                 ? TextStyle(
//                                                     decoration: TextDecoration.lineThrough,
//                                                   )
//                                                 : TextStyle(
//                                                     decoration: TextDecoration.none,
//                                                   ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     width: 250,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(16),
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey,
//                           offset: Offset(0.0, 1.0),
//                           blurRadius: 6.0,
//                         ),
//                       ],
//                     ),
//                     child: TextFormField(
//                       controller: descriptionController,
//                       textAlign: TextAlign.center,
//                       decoration: InputDecoration(
//                         hintText: 'Write a task',
//                         hintStyle: TextStyle(),
//                         fillColor: Colors.white,
//                         filled: true,
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.transparent),
//                           borderRadius: BorderRadius.circular(16.0),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.transparent),
//                           borderRadius: BorderRadius.circular(16.0),
//                         ),
//                       ),
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         userList.add(
//                             UserModel(description: descriptionController.text, complete: false));
//                         descriptionController.clear();
//                       });
//                     },
//                     child: Container(
//                       padding: EdgeInsets.all(18),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(16),
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey,
//                             offset: Offset(0.0, 1.0),
//                             blurRadius: 6.0,
//                           ),
//                         ],
//                       ),
//                       child: Icon(Icons.add, color: Colors.grey),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget slideLeftBackground() {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(16),
//           color: Colors.red,
//         ),
//         child: Align(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: <Widget>[
//               Icon(
//                 Icons.delete,
//                 color: Colors.white,
//               ),
//               Text(
//                 " Delete",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.w700,
//                 ),
//                 textAlign: TextAlign.right,
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//             ],
//           ),
//           alignment: Alignment.centerRight,
//         ),
//       ),
//     );
//   }
// }

// class UserModel {
//   final String description;
//   final bool complete;

//   UserModel({required this.description, required this.complete});
// }

import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo/utils/loginScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<UserModel> userList = []; // Declare a list to store API data
  int _itemCount = 3;
  final TextEditingController descriptionController = TextEditingController();

  Future<void> logoutApi() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('A    T O D O'),
        leading: GestureDetector(
          onTap: () {
            logoutApi();
            print("logout");
          },
          child: Icon(Icons.logout_rounded),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today's task",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 22),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.66,
                  child: userList.length == 0
                      ? Text("Write a task and press +")
                      : ListView.builder(
                          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                          itemCount: userList.length,
                          itemBuilder: (context, index) {
                            final task = userList[index];
                            return Dismissible(
                              background: slideLeftBackground(),
                              key: UniqueKey(),
                              onDismissed: (direction) {
                                // Handle dismiss action if needed
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.white,
                                  ),
                                  child: CheckboxListTile(
                                    title: Text(
                                      task.description,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: task.complete
                                          ? TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                            )
                                          : TextStyle(
                                              decoration: TextDecoration.none,
                                            ),
                                    ),
                                    value: task.complete,
                                    onChanged: (value) {
                                      setState(() {
                                        task.complete = value!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: descriptionController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Write a task',
                        hintStyle: TextStyle(),
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        userList.add(
                            UserModel(description: descriptionController.text, complete: false));
                        descriptionController.clear();
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Icon(Icons.add, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget slideLeftBackground() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,
        ),
        child: Align(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Icon(
                Icons.delete,
                color: Colors.white,
              ),
              Text(
                " Delete",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          alignment: Alignment.centerRight,
        ),
      ),
    );
  }
}

class UserModel {
  String description;
  bool complete;

  UserModel({required this.description, required this.complete});
}

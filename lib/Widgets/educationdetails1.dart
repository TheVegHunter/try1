import 'dart:convert';

import 'package:flutter/material.dart';

class EducationDetails1 extends StatefulWidget {
  var uid;

  EducationDetails1(this.uid);

  @override
  _EducationDetails1State createState() => _EducationDetails1State(this.uid);
}

class _EducationDetails1State extends State<EducationDetails1> {
  var uid;

  _EducationDetails1State(this.uid);

  bool loading = false;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  Widget educationListviewWidget() {
    return ListView(children: <Widget>[
        .map((user)
    =>
        GestureDetector(
          onTap: () {},
          child: Card(
            margin: EdgeInsets.all(10.0),
            elevation: 15.0,
            child: Padding(
              padding: EdgeInsets.all(9.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ListTile(
                    leading: Card(
                      child: Container(
                        height: 25.0,
                        width: 50.0,
                        child: Center(
                          child: Text(user.year),
                        ),
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Degree: " + user.degree),
                        Text("CPI: " + user.cpi),
                        Text("Year: " + user.year),
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
//                                setState(() {
//                                  loading=true;
//                                });
//                                Future.delayed(Duration(seconds: 7),(){
//                                  setState(() {
//                                    loading = false;
//                                  });
//                                })
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  EducationDetails1(uid)));
                    },
                    child: Container(
                      height: 25.0,
                      width: 35.0,
                      child: Center(
                        child: Icon(
                          Icons.remove_circle,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    )
    ]
    );

  }

  Widget LoadingIndicator() {
    return Positioned(
      child: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        color: Colors.blueGrey[700],
        child: Center(
          child: SizedBox(
            height: 50.0,
            width: 50.0,
            child: CircularProgressIndicator(strokeWidth: 0.7),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Education Details',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddEduDetails()));
            },
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          educationListviewWidget(),
          loading ? LoadingIndicator : Container()
        ],
      ),
    );
  }
}

class Users {
  int id;
  String name;
  String username;
  String email;

  Users({
    this.id,
    this.name,
    this.username,
    this.email,
  });

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      username: json['username'],
    );
  }
}

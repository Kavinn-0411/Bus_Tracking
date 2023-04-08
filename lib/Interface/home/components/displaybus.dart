import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_storage/firebase_storage.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:bus_tracker/Interface/home/components/map.dart';

class Displaybus extends StatefulWidget {
  const Displaybus({Key? key}) : super(key: key);

  @override
  State<Displaybus> createState() => _DisplaybusState();
}

class _DisplaybusState extends State<Displaybus> {
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Available routes';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: Column(children: [
          StreamBuilder<List<User>>(
            stream: readUsers(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong! ${snapshot.error}');
              } else if (snapshot.hasData) {
                final users = snapshot.data!;
                return ListView(
                  children: users.map(buildUser).toList(),
                ); // ListView
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
          ElevatedButton(
            onPressed: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GMap(),
                ),
              );
              
            },
            child: const Text('Map'),
          ),
          
        ]),
      ),
    );
  }

  Widget buildsubmit(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ElevatedButton(
            onPressed: () {
              //if (_formKey.currentState!.validate()) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GMap(),
                ),
              );
              //print(frominput);
              //print(toinput);
              //}
            },
            child: const Text('Map'),
          ),
        ),
      ],
    );
  }

  Widget buildUser(User user) => ListTile(
        leading: CircleAvatar(child: Text('${user.busno}')),
        title: Text(user.start),
        //trailing: Text(user.end),
        subtitle: Text(user.end),
        trailing: Text(user.time.toDate().toString()),
      ); // ListTile
  Stream<List<User>> readUsers() => FirebaseFirestore.instance
      .collection('buslist')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => User.fromJson(doc.data())).toList());
}

class User {
  String id;
  String busno;
  String start;
  String end;
  Timestamp time;
  //DateTime d = time.toDate();

  User({
    this.id = '',
    required this.busno,
    required this.start,
    required this.end,
    required this.time,
  });
  Map<String, dynamic> toJson() => {
        'id': id,
        'busno': busno,
        'start': start,
        'end': end,
        'time': time,
      };
  static User fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        busno: json['busno'],
        start: json['start'],
        end: json['end'],
        time: json['time'],
      );
}

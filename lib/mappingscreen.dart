import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mappingscreen extends StatelessWidget {
  var arr_details = [
    {'name': 'Rhythm', 'mobile': '9419291449', 'unread': '3'},
    {'name': 'Ragam', 'mobile': '9103287253', 'unread': '1'},
    {'name': 'Rishab', 'mobile': '9419291449', 'unread': '5'},
    {'name': 'Raghav', 'mobile': '9055581111', 'unread': '2'},
    {'name': 'Rahul', 'mobile': '9103287253', 'unread': '1'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Chats', style: TextStyle(fontSize: 50),),
            Expanded(
              child: ListView.separated(itemBuilder: (context, index){
                return ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    size: 40,
                  ),
                  title: Text(
                    arr_details[index]['name'].toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.black),
                  ),
                  subtitle: Text(arr_details[index]['mobile'].toString()),
                  trailing: CircleAvatar(backgroundColor: Colors.amberAccent,radius: 10,child: Text(arr_details[index]['unread'].toString(), style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),)),
                );
              }, separatorBuilder: (context, index){
                return Divider(thickness: 2, color: Colors.black,);
              }, itemCount: arr_details.length),
            )
          ],
        ),
      ),
    );
  }
}

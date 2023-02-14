import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24.0,bottom: 24.0,left: 16),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
        ListTile(
          title: const Text(
            'Flutter Tips',
            style: TextStyle(color: Colors.black),
          ),
          subtitle:  Padding(
            padding:  const EdgeInsets.only(top:16.0,bottom: 16.0),
            child: Text(
              'build your career with me ',
              style: TextStyle(fontSize:18,color: Colors.black.withOpacity(.5)),
            ),
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.delete,
              color: Colors.black,
            ),
            onPressed: () {
              
            },
          ),
        )
     ,
     Padding(
       padding: const EdgeInsets.only(right: 24),
       child: ListTile(title: Text('May21 , 2022',style: TextStyle(color: Colors.black.withOpacity(.4)),),),
     )
     
     
      ]),
    );
  }
}

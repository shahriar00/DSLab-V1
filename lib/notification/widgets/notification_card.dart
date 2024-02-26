import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final List<String> listData;

  CardList({required this.listData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
     
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ListTile(
          //   title: Text('List ${listData[0]}'),
          // ),
         // Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              listData.length,
              (index) => ListTile(
                title: Text(listData[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

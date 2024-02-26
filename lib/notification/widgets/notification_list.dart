import 'package:dslab/notification/widgets/notification_card.dart';
import 'package:flutter/material.dart';

class NotificationListsWithCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<List<String>> listsData = [
      ['New Course', 'Instructor: McMullen', 'The Course is Very Good... dolor sit amet, con sect tur adipiscing elit...','Today at 12:45pm'],
      ['DS Club Activity', 'About Activity......', 'Today at 08:55am'],
          ['DS Club Activity', 'About Activity......', 'Today at 08:55am'],
      ['DS Lab New PC', 'Good News for all DS Lab Followers, This is to inform you all that our Lab is now being installed with', 'Yesterday Z'],
      ['DS Summit Reg.', 'OMG! Summit 2023 reg is now open for all students and .', '2 Days ago'],       
    ];

    return ListView.builder(
      itemCount: listsData.length,
      
      itemBuilder: (context, index) {
        return CardList(listData: listsData[index]);
      },
    );
  }
}
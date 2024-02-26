import 'package:dslab/notification/widgets/notification_card.dart';
import 'package:flutter/material.dart';

class NotificationListsWithCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<List<String>> listsData = [
      ['Item 1', 'Item 2', 'Item 3'],
      ['Item A', 'Item B', 'Item C', 'Item D'],
      ['Item X', 'Item Y', 'Item Z'],
      ['Item P', 'Item Q', 'Item R'],
      ['Item M', 'Item N', 'Item O'],
        ['Item M', 'Item N', 'Item O'],
          ['Item M', 'Item N', 'Item O'],
            ['Item M', 'Item N', 'Item O'],
              ['Item M', 'Item N', 'Item O'],
    ];

    return ListView.builder(
      itemCount: listsData.length,
      
      itemBuilder: (context, index) {
        return CardList(listData: listsData[index]);
      },
    );
  }
}
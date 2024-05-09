import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemModel {
  final String name;
  bool isApproved;

  ItemModel(this.name, {this.isApproved = false});
}

List<ItemModel> items = [
  ItemModel(isApproved: false, 'fgh'),
  ItemModel(isApproved: false, 'fgh'),
  ItemModel(isApproved: false, 'fgh'),
  ItemModel(isApproved: false, 'fgh')
];

class ApprovalScreenTemp extends StatefulWidget {
  final List<ItemModel> items;

  const ApprovalScreenTemp({required Key key, required this.items})
      : super(key: key);

  @override
  _ApprovalScreenState createState() => _ApprovalScreenState();
}

showvalue(BuildContext context) {
  showCupertinoDialog(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      title: const Text('Alert'),
      content: const Text("Something Went Wrong, please Try again later"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Ok'),
        ),
      ],
    ),
  );
}

class _ApprovalScreenState extends State<ApprovalScreenTemp> {
  int approvedCount = 0;
  bool isComplete = false;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop:
          approvedCount == 0 || approvedCount == items.length ? true : false,
      onPopInvoked: (didPop) {
        if (approvedCount != 0 && approvedCount != items.length) {
          log(approvedCount.toString());
          showvalue(context);
        } else {
          return;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Item Approval'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListTile(
              title: Text(item.name),
              trailing: Checkbox(
                value: item.isApproved,
                onChanged: (value) {
                  setState(() {
                    item.isApproved = value!;
                    if (value) {
                      approvedCount++;
                    } else {
                      approvedCount--;
                    }
                    if (approvedCount == items.length || approvedCount == 0) {
                      isComplete = true;
                    } else {
                      isComplete = false;
                    }
                  });
                },
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (isComplete) {
              Navigator.of(context).pop();
            } else {
              // Show a snackbar or dialog to inform the user to approve all items
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Please approve all items or none to go back.'),
                ),
              );
            }
          },
          child: Icon(Icons.check),
        ),
      ),
    );
  }
}

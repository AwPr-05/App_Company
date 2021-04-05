import 'package:flutter/material.dart';


class HomeTile extends StatelessWidget {

  final IconData icon;
  final String title;
  final String subTitle;

    HomeTile({this.icon,this.subTitle,this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,
      elevation: 8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon == null ? Icons.store : icon,
            color: Colors.green,
            size: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6, bottom: 3),
            child: Text(
              title ?? "Title",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Text(
            subTitle ?? "Subtitle",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

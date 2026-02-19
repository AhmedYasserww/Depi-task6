
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.Title,
    required this.subTitle,
    required this.icon,
  });
  final String Title;
  final String subTitle;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        Title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 34,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(
          color: Color(0xFF757575),
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
      ),
      trailing: icon,
    );
  }
}

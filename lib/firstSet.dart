import 'package:flutter/material.dart';

class SidebarItem extends StatelessWidget {
  final IconData icon;
  final String title;

  SidebarItem({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(
        title,
        style:
            TextStyle(color: title == 'Overview' ? Colors.blue : Colors.black),
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          title == 'Overview' ? ".          " : '',
          style: const TextStyle(
              color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      onTap: () {},
    );
  }
}

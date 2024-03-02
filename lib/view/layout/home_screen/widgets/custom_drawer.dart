import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // اضافة ملاحظة: يمكنك إضافة الاكشن الذي تريده هنا
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // اضافة ملاحظة: يمكنك إضافة الاكشن الذي تريده هنا
            },
          ),
          // يمكنك إضافة المزيد من العناصر كـ ListTile حسب الحاجة
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SettingItem {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color? iconColor;

  SettingItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.iconColor,
  });
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SettingItem> items = [
      SettingItem(
        icon: Icons.settings,
        title: "การตั้งค่าทั่วไป",
        subtitle: "เรื่องทั่วไป",
        iconColor: Colors.blue,
      ),
      SettingItem(
        icon: Icons.lock,
        title: "ความเป็นส่วนตัว",
        subtitle: "เรื่องทั่วไป",
        iconColor: Colors.amber,
      ),
      SettingItem(
        icon: Icons.notifications,
        title: "การแจ้งเตือน",
        subtitle: "เรื่องทั่วไป",
        iconColor: Colors.red,
      ),
      SettingItem(
        icon: Icons.sunny,
        title: "รูปแบบแอปพลิเคชัน",
        subtitle: "เรื่องทั่วไป",
        iconColor: Colors.grey,
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("Yindeetonrub Restaurnt"),
        backgroundColor: Colors.green.shade500,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return SettingMenuBox(
            icon: items[index].icon,
            title: items[index].title,
            subtitle: items[index].subtitle,
            iconColor: items[index].iconColor,
          );
        },
      ),
    );
  }
}

class SettingMenuBox extends StatelessWidget {
  const SettingMenuBox({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.iconColor,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // ไอคอนในวงกลม
          CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            child: Icon(icon, color: iconColor ?? Colors.blue, size: 24),
          ),
          const SizedBox(
            width: 16,
          ), // เว้นวรรคแทน spacing (ใน Flutter บาง version)
          // ข้อความ
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: Colors.grey),
        ],
      ),
    );
  }
}

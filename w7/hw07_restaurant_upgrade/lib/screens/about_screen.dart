import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Yindeetonrub Restaurant")),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 20,
          children: <Widget>[
            Text(
              "About",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            Row(
              children: <Widget>[
                Flexible(
                  child: 
                    Text("""
\t\t\t\tร้านยินดีต้อนรับ ขอยินดีต้อนรับทุกท่านเข้าสู่แอปพลิเคชันร้านอาหารของเรา ท่านสามารถเริ่มส่งอาหารได้ที่เมนู "Home" ขอให้ทุกท่านเพลิดเพลินไปกับอาหารของเรา และหวังว่าท่านจะสนุกกับมื้อนี้ ขอบคุณที่ใช้บริการ""")
                )
              ],
            ),
            Row(
              children: [
                Text("""
สถานที่: Minecraft, Java Edition Street, 11000
เบอร์โทรศัพท์: 012-123-1212 ต่อ 1
Facebook: Yindeetonrub Restaurant""")
              ],
            ),
            Column(
              children: [
                SizedBox(height: 20,),
                Text("_____________________________"),
                Text("Yinddetonrub Restaurant")
              ],
            )
          ],
        ),
      ),
    );
  }
}

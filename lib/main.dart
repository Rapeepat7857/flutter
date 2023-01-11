import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Team Group")),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
              //ค่าที่ต้องการเพิ่ม
              context: context,
              color: Colors.green,
              blocktext: "รพีพัฒน์ กลางบุญเรือง",
              imgPath: "lib/asset/images/IMG-3840.jpg",
              nickname: "บูช",
              ID: "ID: 633410027-5"),
          Card(
              context: context,
              color: Colors.green,
              blocktext: "วรกัญญา สุเนตร",
              imgPath:
                  "lib/asset/images/253622355_1753162534883454_4441215792035617119_n.jpg",
              nickname: "เปียโน",
              ID: "ID: 633410028-3"),
          Card(
              context: context,
              color: Colors.green,
              blocktext: "สุปัญญา อุ่นอุดม",
              imgPath:
                  "lib/asset/images/270382551_1481255525578057_8083146011650541729_n.jpg",
              nickname: "บิว",
              ID: "ID: 633410033-0"),
          Card(
              context: context,
              color: Colors.green,
              blocktext: "อาริสา ปัทมา",
              imgPath:
                  "lib/asset/images/321445922_854021819203571_1310110209717417_n.jpg",
              nickname: "ก้อย",
              ID: "ID: 633410041-1"),
          Card(
              context: context,
              color: Colors.green,
              blocktext: "คเชนทร์ จันทเกษ",
              imgPath:
                  "lib/asset/images/318557955_481888987376494_5262025353269801702_n.jpg",
              nickname: "เม่น",
              ID: "ID: 633410006-3"),
        ],
      ),
    );
  }

  Widget Card(
      //กำหนดค่าที่ใช้รับในการส่ง
      {
    required BuildContext context,
    required Color color,
    required String blocktext,
    required String imgPath,
    required String nickname,
    required String ID,
  }) {
    return Container(
      width: 250,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        //กำหนดค่าที่ใช้ส่ง
                        name: blocktext,
                        imPath: imgPath,
                        Nickname: nickname,
                        id: ID,
                      )));
        },
        child: Column(
          children: [
            CircleAvatar(radius: 60, backgroundImage: NetworkImage(imgPath)),
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                //margin: EdgeInsets.all(10),
                color: color,
                child: Text(blocktext)),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen(
      {required this.name,
      required this.Nickname,
      required this.imPath,
      required this.id});
  String name;
  String Nickname;
  String imPath;
  String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My First Flutter App"),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10.0)),
              CircleAvatar(radius: 120, backgroundImage: NetworkImage(imPath)),
              Padding(padding: EdgeInsets.all(10.0)),
              Text(name),
              Text(id),
              Text(Nickname),
            ],
          ),
        ));
  }
}

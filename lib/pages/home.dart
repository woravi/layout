import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("อุปกรณ์ดับเพลิง"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyBox("เครื่องสูบน้ำดับเพลิง","รู้ถึงส่วนประกอป การใช้งาน และดูแลรักษาเครื่องสูบน้ำดับเพลิง"),
            const SizedBox(
              height: 10,
            ),
            MyBox("สายน้ำดับเพลิง","รู้ถึงส่วนประกอป การใช้งาน และดูแลรักษาสายดับเพลิง"),
            const SizedBox(
              height: 10,
            ),
            MyBox("หัวฉีดดับเพลิง","รู้ถึงส่วนประกอป การใช้งาน และดูแลรักษาหัวฉีดน้ำดับเพลิง"),
        const SizedBox(
          height: 10,),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget MyBox(String title, String subtitle,) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 300,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: AssetImage("assets/engin1.png"),
            fit: BoxFit.cover,
          )
          // image: Image.asset("assets/engin1.png")
          ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start, //ข้อความไปจุดเริ่มต้น
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(subtitle,
                style: const TextStyle(fontSize: 15, color: Colors.black)),
          ]),
    );

  }
}

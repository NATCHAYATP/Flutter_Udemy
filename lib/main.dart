import 'package:flutter/material.dart';
import './widgets/user_transaction.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // String titleInput;
  // String amountInput;
final titleController = TextEditingController();
final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        //ปุ่มข้างๆ Flitter App
        actions: <Widget>[
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.add),
            ),
        ],
      ),
      body: SingleChildScrollView( //ใส่เพื่อให้ตอนพิมพ์มันไม่แจ้งเออเร่อหน้าเต็ม เพราะมันเลื่อนได้
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('CHART!'),
                elevation: 5,
              ),
            ),
            UserTransactions()
          ],
        ),
      ),
      //เพิ่มปุ่มแบบลอยตัว
      //ถ้าไม่อยากกำหนดตำแหน่งปุ่มก็ใช้อันที่ไม่มี location ได้
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

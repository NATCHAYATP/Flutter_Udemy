import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, //กำหนดกรอบไว้ จะได้เลื่อนแค่ตรงกรอบ
      child: ListView.builder( 
        itemBuilder: (ctx, index) { //ctx ตือลิสรายการที่สร้างทั้งหมด index คือจำนวนรายการทั้งหมด ไอ้คำสั่งนี้เอาไว้รัยวนลูป โดยแสดงออกมาทีละนิด
          return Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 15,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.purple,
                              width: 2,
                            ),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '\$${transactions[index].amount.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              transactions[index].title,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              DateFormat.yMMMd().format(transactions[index].date),
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );

        } ,
        itemCount: transactions.length, //จำนวนการ์ดทั้งหมดที่มี
      ),
    );
  }
}
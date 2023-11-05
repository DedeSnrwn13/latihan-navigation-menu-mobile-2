import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:intl/intl.dart';

class PertamaPage extends StatefulWidget {
  const PertamaPage({super.key});

  @override
  State<PertamaPage> createState() => _PertamaPageState();
}

class _PertamaPageState extends State<PertamaPage> {
  DateTime? dateTimeNow, dateTimeTomorrow;
  var year, month, day;

  void dateTime_method() {
    dateTimeNow = new DateTime.now();
    dateTimeTomorrow = dateTimeNow!.add(const Duration(days: 1));
    year = dateTimeTomorrow!.year;
    month = dateTimeTomorrow!.month;
    day = dateTimeTomorrow!.day;

    var data = DateFormat('HH:mm:ss').format(dateTimeNow!);
    var data1 = DateFormat('dd MMMM yyyy').format(dateTimeNow!);
    var data2 = DateFormat('HH:mm').format(dateTimeNow!);
    var data3 = DateFormat('yyyy-MM-dd').format(dateTimeNow!);
    var data4 = DateTime.now().add(Duration(days: -1));

    log("data 1 " + data1.toString());
    log("data 2 " + data2.toString());
    log("data 3 " + data3.toString());
    log("data 4 " + data2.toString());
    log("year " + year.toString());
    log("month " + month.toString());
    log("day " + day.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          MaterialButton(
            onPressed: () {
              dateTime_method();
            },
            child: Text("Test DatePicker"),
          ),
          MaterialButton(
            onPressed: () {
              null;
            },
            child: Text("Test TimePicker"),
          ),
          Text("Date"),
          Text("Time")
        ],
      ),
    );
  }
}

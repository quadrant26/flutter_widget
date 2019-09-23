import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

class TimeDemoPage extends StatefulWidget {
  @override
  _TimeDemoPageState createState() => _TimeDemoPageState();
}

class _TimeDemoPageState extends State<TimeDemoPage> {

  DateTime _nowDate = DateTime.now();
  TimeOfDay _nowTime = TimeOfDay(hour: 12, minute: 20);

  _showDatePicker(){
    showDatePicker(
      context: context,
      initialDate: _nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),
    ).then((result){
      print(result);
      setState(() {
        this._nowDate = result; 
      });
    });
  }

  _showDatePicker2() async{
    var result = await showDatePicker(
      context: context,
      initialDate: _nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),
    );

    print(result);

    setState(() {
     this._nowDate = result; 
    });
  }

  _showTimePicker(){
    showTimePicker(
      context: context,
      initialTime: _nowTime,
    ).then( (result){
      setState(() {
        _nowTime = result;
      });
    });
  }

  _showTimePicker2() async {
    var result = await showTimePicker(
      context: context,
      initialTime: _nowTime,
    );

    print(result);

    setState(() {
      _nowTime = result;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // var now = DateTime.now();
    // print(now.millisecondsSinceEpoch); // 1569231535955

    // print(DateTime.fromMillisecondsSinceEpoch(1569231434094)); // 2019-09-23 17:37:14.094
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('日期时间组件')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${_nowDate}'),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            onTap: _showDatePicker2,
          ),
          SizedBox(height:20),
          Container(
            child: Text('改变后的日期：${formatDate(_nowDate, [yyyy, '年', mm, '月', dd])}'),
          ),
          SizedBox(height:20),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${_nowTime}'),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            onTap: _showTimePicker,
          ),
          SizedBox(height:20),
          Container(
            child: Text('改变后的时间：${_nowTime.format(context)}'),
          )
        ],
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:date_format/date_format.dart';

class TimeOtherDemoPage extends StatefulWidget {
  @override
  _TimeOtherDemoPageState createState() => _TimeOtherDemoPageState();
}

const String MIN_DATETIME = '2010-05-12';
const String MAX_DATETIME = '2021-11-25';
const String INIT_DATETIME = '2019-05-17';

class _TimeOtherDemoPageState extends State<TimeOtherDemoPage> {
  bool _showTitle = true;
  
  DateTimePickerLocale _locale = DateTimePickerLocale.zh_cn;
  List<DateTimePickerLocale> _locales = DateTimePickerLocale.values;

  String _format = 'yyyy-MMMM-dd';
  String _format2 = 'yy年M月d日    EEE,H时:m分';
  
  TextEditingController _formatCtrl = TextEditingController();

  DateTime _dateTime;
  DateTime _dateTime2;

  @override
  void initState() { 
    super.initState();
    _formatCtrl.text = _format2;
    _dateTime = DateTime.parse(INIT_DATETIME);
    _dateTime2 = DateTime.parse(INIT_DATETIME);
  }

  _showDatePicker (){
    DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        showTitle: _showTitle,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
        cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
      ),
      minDateTime: DateTime.parse(MIN_DATETIME),
      maxDateTime: DateTime.parse(MAX_DATETIME),
      initialDateTime: _dateTime,
      dateFormat: _format,
      pickerMode: DateTimePickerMode.datetime, // show TimePicker
      locale: _locale,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      onChange: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }

  _showDatePicker2 (){
    DatePicker.showDatePicker(
      context,
      minDateTime: DateTime.parse(MIN_DATETIME),
      maxDateTime: DateTime.parse(MAX_DATETIME),
      initialDateTime: DateTime.parse(INIT_DATETIME),
      dateFormat: _format2,
      locale: _locale,
      pickerTheme: DateTimePickerTheme(
        showTitle: _showTitle,
      ),
      pickerMode: DateTimePickerMode.datetime, // show TimePicker
      onCancel: () {
        debugPrint('onCancel');
      },
      onChange: (dateTime2, List<int> index) {
        setState(() {
          _dateTime2 = dateTime2;
        });
      },
      onConfirm: (dateTime2, List<int> index) {
        setState(() {
          _dateTime2 = dateTime2;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第三方日期时间组件')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Row(
                  children: <Widget>[
                    Text('${_dateTime}'),
                    Icon(Icons.arrow_drop_down_circle),
                  ],
                ),
                onTap: _showDatePicker,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Row(
                  children: <Widget>[
                    Text('${_dateTime2}'),
                    Icon(Icons.arrow_drop_down_circle),
                  ],
                ),
                onTap: _showDatePicker2,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text('改变后的日期：${formatDate(_dateTime, [yyyy, '年', mm, '月', dd])}'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text('改变后的日期：${_dateTime2}'),
              ),
            ],
          )
        ],
      )
    );
  }
}
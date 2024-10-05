import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class iosTimePickerScreen extends StatefulWidget {
  const iosTimePickerScreen({super.key});

  @override
  State<iosTimePickerScreen> createState() => _iosTimePickerScreenState();
}

TextEditingController _timeController = TextEditingController();

class _iosTimePickerScreenState extends State<iosTimePickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop('/da');
            },
            icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text('Cupertion(IOS)-Time'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/iosLog');
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: SizedBox(
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              ' ${_timeController.text}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 50,
            ),
            CupertinoTimerPicker(
              onTimerDurationChanged: (value) {
                _timePicker(value);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _timePicker(Duration value) {
    timeIos = value;

    if (timeIos != null) {
      setState(() {
        _timeController.text =
            timeIos.toString().split('.').first.padLeft(8, "0");
      });
    }
  }
}

Duration? timeIos;

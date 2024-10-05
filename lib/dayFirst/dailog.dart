import 'package:flutter/material.dart';
class DailogScreen extends StatefulWidget {
  const DailogScreen({super.key});

  @override
  State<DailogScreen> createState() => _DailogScreenState();
}
String _selectedOption = 'Option 1';

class _DailogScreenState extends State<DailogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop('/time');
        }, icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text('Dailog'),
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).pushNamed('/iosDate');
          }, icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Center(
            child: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: GestureDetector(
                onTap: () {
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      title: Text('Phone RingTone'),
                      content: Container(
                        height: 400,
                        width: 400,
                        child: Column(
                          children: [
                            ListTile(
                              title: const Text('None'),
                              leading: Radio<String>(
                                value: 'Option 1',
                                groupValue: _selectedOption,
                                onChanged: (String? value) {
                                  setState(() {
                                    _selectedOption = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text('Callisto'),
                              leading: Radio<String>(
                                value: 'Option 2',
                                groupValue: _selectedOption,
                                onChanged: (String? value) {
                                  setState(() {
                                    _selectedOption = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(' GardeMade'),
                              leading: Radio<String>(
                                value: 'Option 3',
                                groupValue: _selectedOption,
                                onChanged: (String? value) {
                                  setState(() {
                                    _selectedOption = value!;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'Selected: $_selectedOption',
                              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(onPressed: () {
                          Navigator.pop(context);
                        }, child: Text('No',style: TextStyle(color: Colors.red),)),
                        TextButton(onPressed: () {
                          Navigator.pop(context);
                        }, child: Text('Yes',style: TextStyle(color: Colors.red),)),
                      ],
                    );
                  },);
                },
                child: const Center(
                    child: Text(
                      'Click here',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

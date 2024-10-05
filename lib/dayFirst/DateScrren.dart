import 'package:flutter/material.dart';

class DateScreen extends StatefulWidget {
  const DateScreen({super.key});

  @override
  State<DateScreen> createState() => _DateScreenState();
}

class _DateScreenState extends State<DateScreen> {
    TextEditingController _dateController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Date Calendar'),
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).pushNamed('/time');
          }, icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _dateController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  suffixIcon: GestureDetector(
                      onTap: () {
                        _selectDate();
                      },
                      child: (Icon(Icons.calendar_today))),
                  label: Text('DATE')),
            ),
          ),
        ],
      ),
    );
  }
  Future<void>_selectDate()
  async {
   DateTime? _picked= await showDatePicker(
      context: context,
      firstDate: DateTime(1947),
      lastDate: DateTime(2025),
      initialDate:DateTime.now(),
    );
   if(_picked!=null)
     {
       setState(() {
         _dateController.text=_picked.toString().split(" ")[0];
       });
     }
  }
}



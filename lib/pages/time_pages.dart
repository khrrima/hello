part of 'pages.dart';

class TimePages extends StatelessWidget {
  const TimePages({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TimePicker(),
    );
  }
}

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  _TimePickerState createState() => _TimePickerState();

}

class _TimePickerState extends State<TimePicker> {
  final _timeC = TextEditingController();
  TimeOfDay timeOfDay = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Picker Pages", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _timeC,
              decoration: const InputDecoration(
                  labelText: 'Time picker', border: OutlineInputBorder()),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.cyan,
              ),
              onPressed: () => displayTimePicker(context),
              child: const Text("Pick Time"),
            ),
          ],
        ),
      ),
    );
  }
  Future displayTimePicker(BuildContext context) async {
    var time = await showTimePicker(
      context: context,
      initialTime: timeOfDay,
    );
    if (time != null) {
      setState(() {
        _timeC.text = "${time.hour}:${time.minute}";
      });
    }
  }
}
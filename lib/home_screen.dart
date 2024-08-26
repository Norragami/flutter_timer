import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int hours = 0;
  int minutes = 0;
  int seconds = 0;
  Timer? timer;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$hours:$minutes:$seconds",
              style: const TextStyle(fontSize: 50),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () => showDialog(context: context, builder: (p0) => _pickTime()),
                child: const Text("Ввести время"))
          ],
        ),
      ),
    );
  }

  void onTick() {
    setState(() {
      seconds--;
      if (seconds <= 0) {
        timer!.cancel();
      }
    });
  }

  Widget _pickTime() {
    return AlertDialog(
      content: SizedBox(
        height: 200,
        width: 400,
        child: CupertinoTimerPicker(
          initialTimerDuration: const Duration(hours: 0, minutes: 0, seconds: 0),
          mode: CupertinoTimerPickerMode.hms,
          onTimerDurationChanged: (value) {
            setState(() {
              hours = value.inHours;
              minutes = value.inMinutes.remainder(60);
              seconds = value.inSeconds.remainder(60);
            });
          },
        ),
      ),
    );
  }
}


AppBar appBar = AppBar(
  backgroundColor: Colors.blue,
);
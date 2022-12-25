import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeechHome extends StatefulWidget {
  const TextToSpeechHome({Key? key}) : super(key: key);

  @override
  _TextToSpeechHomeState createState() => _TextToSpeechHomeState();
}

class _TextToSpeechHomeState extends State<TextToSpeechHome> {
  String speech = "";
  TextEditingController controller = TextEditingController();
  late FlutterTts flutterTts;
  double volume = 0.5;
  double pitch = 1.0;
  double rate = 0.5;

  initTts() {
    flutterTts = FlutterTts();

    _setAwaitOptions();

    if (Platform.isAndroid) {
      _getDefaultEngine();
      _getDefaultVoice();
    }
   // flutterTts.setLanguage("en-Hi");
  }

  Future _getDefaultEngine() async {
    var engine = await flutterTts.getDefaultEngine;
    if (engine != null) {
      print(engine);
    }
  }

  Future _speak(String text) async {
    await flutterTts.setVolume(volume);
    await flutterTts.setSpeechRate(rate);
    await flutterTts.setPitch(pitch);

    if (text.isNotEmpty) {
      await flutterTts.speak(text);
    }
  }

  Future _getDefaultVoice() async {
    var voice = await flutterTts.getDefaultVoice;
    if (voice != null) {
      print(voice);
    }
  }

  Future _setAwaitOptions() async {
    await flutterTts.awaitSpeakCompletion(true);
  }

  @override
  void initState() {
    super.initState();
    initTts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: controller,
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  speech = controller.text;
                  _speak(speech);
                },
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.white60,
                  child: Icon(
                    Icons.speaker,
                    color: Colors.black,
                    size: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

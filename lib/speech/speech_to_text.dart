import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeechToTextHome extends StatefulWidget {
  const SpeechToTextHome({Key? key}) : super(key: key);

  @override
  _SpeechToTextHomeState createState() => _SpeechToTextHomeState();
}

class _SpeechToTextHomeState extends State<SpeechToTextHome> {

  String text="";
  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;

  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    print("init : $_speechEnabled");
    setState(() {});
  }

  void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult);

  }


  void _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      text = result.recognizedWords;
    });
  }

  @override
  void initState() {
    super.initState();
    _initSpeech();
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
              InkWell(
                onTap: (){

                 if( _speechToText.isNotListening)
                  _startListening();
                 else
                   _stopListening();

                },
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.white60,
                  child: Icon(Icons.mic,color: Colors.black,size: 100,),),
              ),
              SizedBox(height: 40,),
              Text(text,style: TextStyle(fontSize: 25),)
            ],
          ),
        ),
      ),
    );
  }
}

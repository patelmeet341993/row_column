import 'package:flutter/material.dart';
import 'package:stories_editor/stories_editor.dart';

class StoryHome extends StatefulWidget {
  const StoryHome({Key? key}) : super(key: key);

  @override
  _StoryHomeState createState() => _StoryHomeState();
}

class _StoryHomeState extends State<StoryHome> {
  @override
  Widget build(BuildContext context) {
    return StoriesEditor(
        giphyKey: 'meetpateld15326e629154663b12e95c13655e6ba', /// (String) required param
        onDone: (String uri){
          /// uri is the local path of final render Uint8List
          /// here your code
        },
        colorList: [Colors.red,Colors.orange] ,/// (List<Color>[]) optional param
       // middleBottomWidget: Container() /// (Widget) optional param, you can add your own logo or text in the bottom tool
       // fontFamilyList: [] /// (List<String>) optional param
       // isCustomFontList: '' /// (bool) if you use a own font list set value to "true"
         onDoneButtonStyle: Container(child: Text("On Done"),), /// (Widget) optional param, you can create your own button style
    //onBackPress: /// (Future<bool>) optional param, here you can add yor own style dialog
    editorBackgroundColor: Colors.grey,/// (Color) optional param, you can define your own background editor color
    galleryThumbnailQuality:200 /// (int = 200) optional param, you can set the gallery thumbnail quality (higher is better but reduce the performance)
    );
  }
}

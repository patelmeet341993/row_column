import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageHome extends StatefulWidget {
  const ImageHome({Key? key}) : super(key: key);

  @override
  _ImageHomeState createState() => _ImageHomeState();
}

class _ImageHomeState extends State<ImageHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: ListView(
      children: [

        CachedNetworkImage(imageUrl: "https://images.unsplash.com/photo-1585976219691-e234213c730a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NnwxMDY1OTc2fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60"),
        Image.asset("asset/fis.png",height: 100,),
        Image.network("https://images.unsplash.com/photo-1502989642968-94fbdc9eace4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MnwxMDY1OTc2fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60")

      ],
    ),));
  }
}

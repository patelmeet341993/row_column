import 'package:flutter/material.dart';
import 'package:flutter_app/calc/mybtn.dart';
import 'package:geolocator/geolocator.dart';
class LocationHome extends StatefulWidget {
  const LocationHome({Key? key}) : super(key: key);

  @override
  _LocationHomeState createState() => _LocationHomeState();
}

class _LocationHomeState extends State<LocationHome> {


  String data="";


  void setData(String d)
  {
    data=d;
    setState(() {});
  }

  void fetchLocation()async{

    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {

      setData('Location services are disabled.');
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {

        setData('Location permissions are denied');
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      setData('Location permissions are permanently denied, we cannot request permissions.');
      return;
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    Position position= await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);

    setData("Location get successfullyy.....\nLatitude : ${position.latitude} /n  Longitude : ${position.longitude}");
    print("Latitude : ${position.latitude} /n  Longitude : ${position.longitude}");


  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
    body: Column(
      children: [
        Mybtn(btnClick: (){
          fetchLocation();
        },height: 50,label: "Find Location",),
        Expanded(child: Center(child: Text(data,style: TextStyle(fontSize: 30),))),
      ],
    ),
    ));
  }
}

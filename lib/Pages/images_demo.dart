import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/Constants.dart';

class ImagesDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Images"),
      ),
      body: ImagesData()
    );
  }
}

class ImagesData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SimpleImage(),
              SizedBox(height: 20,),
              RoundedImage(),
              SizedBox(height: 20,),
              ImageEffect(),
              SizedBox(height: 20,),
              ClipPathImage(),

            ],
          ),
        ),
      ),
    );
  }
}

class ImageEffect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Image with Effect",
          style: Theme.of(context).textTheme.title,),
        Container(
          constraints: BoxConstraints(
            maxHeight: 200,
            maxWidth: 200,
          ),

          child: ColorFiltered(
            colorFilter: ColorFilter.matrix([
              0.2126, 0.7152, 0.0722, 0, 0,
              0.2126, 0.7152, 0.0722, 0, 0,
              0.2126, 0.7152, 0.0722, 0, 0,
              0,      0,      0,      1, 0,
            ]),
            child: Image.asset(Constants.IMG_WARAI,
              height: 200,),
          ),
        )
      ]
    );
  }
}
class SimpleImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text("Simple Image Blender Colorfilter",
            style: Theme.of(context).textTheme.title,),
          ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.orange.withOpacity(0.5), BlendMode.colorBurn),
            child: Image.asset(Constants.IMG_WARAI,
              height: 200,),
          ),
        ],
    );
  }
}
class RoundedImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text("Rounded Image",
          style: Theme.of(context).textTheme.title,),
        ClipOval(
          child: Image.asset(Constants.IMG_EYE,
            height: 200,
            width: 200,
            fit: BoxFit.cover,),
        ),
      ],
    );
  }
}
class ClipPathImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Clip Path",
          style: Theme.of(context).textTheme.title,),
        ClipPath(
          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS3M8Yd82t55MxMvTDCeriZjQgvlzz9aBZyEg&usqp=CAU",
            height: 200,
            width: 200,
            fit: BoxFit.cover,),
          clipper: MyCustomClipper(),
        ),
      ],
    );
  }
}
class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-120);
    path.lineTo(size.width,size.height-40);
    path.lineTo(size.width, size.height-120);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
import 'package:flutter/material.dart';

class LogoPicker extends StatelessWidget {
  const LogoPicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            height: 120.0,
            width: 120.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(80.0),
              boxShadow: [
                // color: Colors.white, //background color of box
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 15.0, // soften the shadow
                  spreadRadius: 5.0, //extend the shadow
                  // offset: Offset(
                  //   15.0, // Move to right 10  horizontally
                  //   15.0, // Move to bottom 10 Vertically
                  // ),
                )
              ],
            ),
            child: Center(
              child: Text(
                'Club\n Logo',
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w600,
                  fontSize: 15.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            bottom: 5.0,
            right: 1.0,
            child: CircleAvatar(
              radius: 16.0,
              backgroundColor: Colors.black26,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt,
                  size: 16.5,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

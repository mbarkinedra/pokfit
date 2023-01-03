import 'package:flutter/material.dart';

class ChallengesWidgetItem extends StatelessWidget {
  String image;

  String time;
  String date;
  double high;

  ChallengesWidgetItem(
      {required this.image,
      required this.time,
      required this.date,
      required this.high});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                  image,
                ),
                fit: BoxFit.fill)),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: high,
          decoration: BoxDecoration(color: Colors.white.withOpacity(.4)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(time,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                  Text(date, style: TextStyle(color: Colors.white))
                ]),
          ),
        ));
  }
}

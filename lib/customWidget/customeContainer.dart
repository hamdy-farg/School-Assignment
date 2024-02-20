import 'package:flutter/material.dart';

class CostumContainer extends StatelessWidget {
  String data1;
  String data2;
  Icon icon;
  Color BorderColor;
  Color ContainerColor;
  String data3;
  CostumContainer(
      {super.key,
      required this.data3,
      required this.BorderColor,
      required this.data1,
      required this.data2,
      required this.icon,
      required this.ContainerColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: BorderColor, width: 2),
          color: ContainerColor,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      height: 200,
      width: 120,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              icon,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${data1}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.grey.withOpacity(.9)),
                  ),
                  Row(
                    children: [
                      Text(
                        "${data2}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      Text(
                        "  ${data3}",
                        style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              )
            ]),
      ),
    );
  }
}

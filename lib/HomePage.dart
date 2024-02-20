import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/customWidget/customeContainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey,
                      width: 4.0,
                      style: BorderStyle.solid), //Border.all

                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white10,
                      offset: const Offset(
                        1.0,
                        1.0,
                      ),
                      blurRadius: 20.0,
                      spreadRadius: 20.0,
                    ),
                    BoxShadow(
                      color: Colors.black54,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ]),
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 66,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "data:image/jpeg;base64,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"),
                      radius: 64,
                    ),
                    backgroundColor: Colors.green,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hamdy Farg",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CostumContainer(
                        data1: "age",
                        data2: "26 ",
                        data3: "years",
                        icon: Icon(
                          Icons.calendar_month,
                          color: Colors.blue,
                          size: 35,
                        ),
                        ContainerColor: Colors.blue.shade200,
                        BorderColor: Colors.blue.shade900,
                      ),
                      CostumContainer(
                        data1: "Weight",
                        data2: "78",
                        data3: "Kg",
                        icon: Icon(
                          Icons.anchor_rounded,
                          color: Colors.green.shade900,
                          size: 35,
                        ),
                        ContainerColor: Colors.green.shade300,
                        BorderColor: Colors.green,
                      ),
                      CostumContainer(
                        data1: "Height",
                        data2: "179",
                        data3: "cm",
                        icon: Icon(
                          Icons.upgrade_rounded,
                          color: Colors.orange.shade800,
                          size: 35,
                        ),
                        ContainerColor: Colors.orange.shade200,
                        BorderColor: Colors.orange,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey,
                      width: 4.0,
                      style: BorderStyle.solid), //Border.all

                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white10,
                      offset: const Offset(
                        1.0,
                        1.0,
                      ),
                      blurRadius: 20.0,
                      spreadRadius: 20.0,
                    ),
                    BoxShadow(
                      color: Colors.black54,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ]),
              child: Column(
                children: [
                  ListTile(
                      leading: Icon(
                        Icons.sunny,
                        color: Colors.yellow,
                      ),
                      title: Text("Light Theme"),
                      trailing: Switch(
                        value: value,
                        onChanged: (val) {
                          setState(() {
                            value = val;
                          });
                        },
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  ListTile(
                      leading: Icon(
                        Icons.swap_vertical_circle_sharp,
                        color: Colors.green,
                        size: 30,
                      ),
                      title: Text("English"),
                      trailing: Icon(Icons.arrow_drop_down_sharp))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey,
                      width: 4.0,
                      style: BorderStyle.solid), //Border.all

                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white10,
                      offset: const Offset(
                        1.0,
                        1.0,
                      ),
                      blurRadius: 20.0,
                      spreadRadius: 20.0,
                    ),
                    BoxShadow(
                      color: Colors.black54,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ]),
              child: Column(
                children: [
                  ListTile(
                      leading: Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                      ),
                      title: Text("Log out"),
                      ),
                ],
              ),
            )
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.analytics, color: Colors.white),
              label: "Analytics"),
          BottomNavigationBarItem(
              icon: Icon(Icons.precision_manufacturing, color: Colors.white),
              label: "prescripitons"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_off_outlined, color: Colors.white),
              label: "profile")
        ],
      ),
    );
  }
}

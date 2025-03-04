import 'package:flutter/material.dart';
import 'package:inner_voice/constants/app_colors.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime date = DateTime(DateTime.december);
  late Size size;

  @override
  void initState() {
    DateTime thisDate = new DateTime.now();
    date = new DateTime(thisDate.year, thisDate.month, thisDate.day);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String todayDate = DateFormat('EEE, dd MMM yyyy').format(DateTime.now());
    size = MediaQuery.of(context).size;
    // String todayDate = DateFormat.EEE;
    return Scaffold(
      drawer: Drawer(
        width: 200,
        backgroundColor: Colors.red,
        elevation: 5,
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("AppBar"),
        // automaticallyImplyLeading: false,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        // foregroundColor: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                color: Colors.white,
                child: Container(
                  width: size.width,
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Thought of the Day !!",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                          '“It is better to conquer yourself than to win a thousand battles”')
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mental Health Metrics",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.more_vert, color: Colors.grey)
                ],
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      healthMetrics(
                          child: Column(children: [
                        Row(children: [
                          Icon(Icons.heart_broken, color: Colors.white),
                          Text("Freud Score",
                              style: TextStyle(color: Colors.white))
                        ])
                      ])),
                      healthMetrics(
                          child: Column(children: [
                        Row(children: [
                          Icon(Icons.tag_faces, color: Colors.white),
                          Text("Mood", style: TextStyle(color: Colors.white))
                        ])
                      ])),
                      healthMetrics(
                          child: Column(children: [
                        Row(children: [
                          Icon(Icons.medication, color: Colors.white),
                          Text("Health journal",
                              style: TextStyle(color: Colors.white))
                        ])
                      ]))
                    ],
                  )),
              Text("Snail dots"),
              Card(
                color: AppColors.mainColor,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Heart Rate",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '96',
                                  style: TextStyle(
                                      fontSize: 48, // Adjust as needed
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              WidgetSpan(
                                child: SizedBox(
                                    width:
                                        8), // Space between numbers and "bpm"
                              ),
                              TextSpan(
                                text: 'bpm',
                                style: TextStyle(
                                  fontSize: 16, // Adjust as needed
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ]),
                          )
                        ],
                      ),
                      Icon(
                        Icons.monitor_heart_outlined,
                        size: 100,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mindful Trackers",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.more_vert, color: Colors.grey)
                ],
              ),
              /* Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color(0xffF2F5EB),
                            borderRadius: BorderRadius.circular(30)),
                        child: Icon(
                          Icons.watch_later_outlined,
                          size: 50,
                        ),
                      ),
                      Column(
                        children: [Text()],
                      ),
                      Icon(Icons.waves)
                    ],
                  ),
                ),
              )*/
              ListTile(
                tileColor: Colors.white,
                minTileHeight: size.height / 8,
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xffF2F5EB),
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(Icons.watch_later_outlined, size: 50),
                ),
                title: Text(
                  "Mindful Hours",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "2.5h/8h",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                trailing: Icon(Icons.waves),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container healthMetrics({required Widget child}) {
    return Container(
      height: 200,
      width: 163,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: AppColors.mainColor,
      ),
      child: child,
    );
  }
}

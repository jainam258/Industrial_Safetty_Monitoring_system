import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:industrial_safetty_monitoring/Sensor/smokeSensor.dart';
import 'package:industrial_safetty_monitoring/Sensor/fireSensor.dart';
import 'package:industrial_safetty_monitoring/Sensor/mq4Sensor.dart';
import 'package:industrial_safetty_monitoring/Sensor/mq135Sensor.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        iconTheme: IconThemeData(color: Colors.white),

        title: Text("Industrial scfetty Monitoring",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),),
      ),
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
            decoration:BoxDecoration(color: Colors.indigo),
            accountName: Text("JAINAM"),
            accountEmail: Text("ID: 226090307127"),
          ),
          ListTile(
            leading: Icon(Icons.wifi),
            title: Text("Total 4 Sensor "),
          ),
          ListTile(
            leading: Icon(Icons.on_device_training),
            title: Text("All Sensor Dis-Connected"),
          ),
          Divider(
            height: 10,
          ),

          ListTile(
            leading: Icon(Icons.lock),
            title: Text("LOG IN"),
          ),
        ]),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: Colors.blue,
              margin: EdgeInsets.only(left: 16,top: 16,bottom: 16,right: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                ),
              ),
              elevation: 16,
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SmokeSensor()));
                },
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.indigo,Colors.indigoAccent,],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(16),
                ),
                  child: Center(
                    child: ListTile(
                      leading: Image.asset("assets/images/smoke-detector1.png"),
                      subtitle: Text("This Sensor detect Smoke ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),),
                      title: Text("Smoke Sensor",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward,color: Colors.white,size: 30,),
                    ),
                  ),
              ),
            ),
            ),
            Card(
              color: Colors.blue,
              margin: EdgeInsets.only(left: 16,top: 16,bottom: 16,right: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                ),
              ),
              elevation: 16,
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FireSensor()));
                },
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.indigo,Colors.indigoAccent,],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Image.asset("assets/images/fire-detector.png"),
                      subtitle: Text("This Sensor detect Fire ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),),
                      title: Text("Fire Sensor",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward,color: Colors.white,size: 30,),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              margin: EdgeInsets.only(left: 16,top: 16,bottom: 16,right: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                ),
              ),
              elevation: 16,
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => mq4Sensor()));
                },
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.indigo,Colors.indigoAccent,],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Image.asset("assets/images/MQ4-sensor.png"),
                      subtitle: Text("This Sensor detect Natural Gas ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),),
                      title: Text("MQ4 Sensor",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward,color: Colors.white,size: 30,),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              margin: EdgeInsets.only(left: 16,top: 16,bottom: 16,right: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                ),
              ),
              elevation: 16,
              shadowColor: Colors.indigo,

              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => mq135sensor()));
                },
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.indigo,Colors.indigoAccent,],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Image.asset("assets/images/MQ135-sensor.png"),
                      subtitle: Text("This Sensor detect Air Quality ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),),
                      title: Text("MQ135 Sensor",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward,color: Colors.white,size: 30,),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

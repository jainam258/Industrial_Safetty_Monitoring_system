import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class mq4Sensor extends StatefulWidget {
  const mq4Sensor({super.key});

  @override
  State<mq4Sensor> createState() => _mq4SensorState();
}

class _mq4SensorState extends State<mq4Sensor> {
  List<int>? allData;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    setState(() {
      isLoading = true;
    });

    try {
      http.Response response = await http.get(Uri.parse("https://www.randomnumberapi.com/api/v1.0/random?min=100&max=1000&count=10"));

      if (response.statusCode == 200) {
        List<dynamic> jsonResponse = jsonDecode(response.body);
        List<int> fetchedData = jsonResponse.map((e) => e as int).toList();

        // Check if any value is above 900 and show an alert if true
        bool hasHighValue = fetchedData.any((value) => value > 900);
        if (hasHighValue) {
          _showAlert();
        }

        setState(() {
          isLoading = false;
          allData = fetchedData;
        });
      } else {
        setState(() {
          isLoading = false;
        });
        // Optionally, handle the error here
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      // Optionally, handle the exception here
    }
  }

  void _showAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Alert",
            style: TextStyle(color: Colors.red),
          ),
          content: Text(
            "MQ4 Sensor Detect GAS",
            style: TextStyle(color: Colors.red),
          ),
          backgroundColor: Colors.black87, // Background color of the dialog
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "OK",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "MQ4 Sensor Data",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator(color: Colors.white))
          : ListView.builder(
        itemCount: allData?.length ?? 0,
        padding: EdgeInsets.all(16),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.only(bottom: 24),
            color: Colors.indigo,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.indigo, width: 3.0),
              borderRadius: BorderRadius.circular(24.0),
            ),
            elevation: 16,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    "MQ4 sensor value: ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '${allData?[index] ?? "N/A"}',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

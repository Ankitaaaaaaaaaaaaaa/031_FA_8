import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DigitalID(),
    );
  }
}

class DigitalID extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6EEF7),
      appBar: AppBar(
        title: Text("Digital ID Card"),
        backgroundColor: Color(0xFF6B8E99),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    "https://i.imgur.com/BoN9kdC.png",
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "Ankita Sharma",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  "Batch: 59th, Department of CSE",
                  style: TextStyle(color: Colors.grey),
                ),

                Divider(height: 25),

                Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 10),
                    Text("ID: 0182210012101031"),
                  ],
                ),

                SizedBox(height: 10),

                Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 10),
                    Text("Email: ankita3943@gmail.com"),
                  ],
                ),

                SizedBox(height: 10),

                Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 10),
                    Text("Phone: +8801618537565"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

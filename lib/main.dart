import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home:Homepage()
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Logo Setion
          SizedBox(
            height:100 ,
          ),
          Container(
            width: 200,
            height: 55,
            margin: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("images/logo.png"),
                       fit: BoxFit.cover
                      
                    ),
                  ),
                ),
                SizedBox(width:2),
                Text(
                  "TinySignals",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 300,
            height: 400,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage("images/splash.png"),
                //fit: BoxFit.cover,
              ),
             
            ),
          ),
          SizedBox(height: 20),
          Container(
            child:Text("  Understand Why Your Baby Is Craying",
            style:TextStyle(fontSize:20,fontWeight:FontWeight.bold  ) ,) ,),
          // Description Text
      SizedBox(height: 30),
          // Start Button
          Container(
            width: 220,
            height: 55,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 12,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.pink[400],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return DetectionPage();
                }));
              },
              child: Text(
                "Start",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Container(
              width: 320,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("images/img.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height:20),
            Text(
              "Baby is Hungry",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent,
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.pink[50],
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                  SizedBox(height: 12),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.play_arrow, size: 30, color: Colors.pinkAccent),
                        onPressed: () {
                          print("Play button pressed");
                        },
                      ),
                      Expanded(
                        child: LinearProgressIndicator(
                          value: 0.5,
                          backgroundColor: Colors.pink[100],
                          color: Colors.pinkAccent,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "5:00",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 330,
              height: 60,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                
                },
                child: Text(
                  "Start Listening ...",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
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


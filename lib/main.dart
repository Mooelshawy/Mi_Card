import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MainPageBody(),
    );
  }
}

class MainPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text('MiCard'),
        centerTitle: true,
        elevation: 5,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.blueGrey[500],
                radius: 70,
                child: Image(
                  image: AssetImage('images/technology.png'),
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Center(
                child: Column(
              children: [
                Text(
                  'Omran Elsahwy',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Pacifico'),
                ),
                Text(
                  'Flutter Developer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white60,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'SourceSans'),
                ),
              ],
            )),
            Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
            color: Colors.black,
          ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              padding: EdgeInsets.all(5),
              child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 35,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter Your Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              padding: EdgeInsets.all(5),
              child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.white,
                    size: 35,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter Your Email',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

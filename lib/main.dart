import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //丸くアバターが表示されるやつクソ便利でｗ
              const CircleAvatar(
                backgroundColor: Colors.blueGrey,
                radius: 45,
                backgroundImage: AssetImage('images/nanase.jpeg'),
              ),
              const Text(
                'NISINO NANASE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'RobotoMono',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    color: Colors.teal.shade100,
                    fontFamily: 'Rowdies',
                    fontWeight: FontWeight.bold),
              ),

            const SizedBox(
                height: 10,
                width: 200,
                //Dividerを使って仕切りを作る事ができるクソ便利
                child: Divider(color: Colors.teal,),
              ),
              const Card(
                //marginは外側
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                //paddingは内側
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+123 080-1245-1235',
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 15,
                        fontFamily: 'Rowdies'),
                  ),
                ),
              ),
              const Card(
                //marginは外側
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                //paddingは内側
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '****@gmail.com',
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 15,
                        fontFamily: 'Rowdies'),
                  ),
                  isThreeLine: false,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

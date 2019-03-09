import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    /* Pada halaman selain main return berupa Widget Scaffold */
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("John Doe"),
              accountEmail: Text("john.doe@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue[300],
                child: Text(
                  "JD",
                  style: TextStyle(fontSize: 40.0, color: Colors.white),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("About"),
              onTap: (){
                /* Navigasi ke halaman lain yang telah didefinisikan pada routers di main.dart */
                Navigator.popAndPushNamed(context, '/about');
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Icon(Icons.home, size: 60,),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: SideDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent[400],

          title: Text('Dashboard'),

          centerTitle: true,

          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications_on,
                color: Colors.redAccent[700],
              ),
              onPressed: () {},
            ), // IconButton
          ], // <Widget>[]
        ), // AppBar

        body: Center(
          child: Column(
            children: <Widget>[
              Pictures(),
              TextName(),
              FirstRow(),
              SecondRow(),
            ], // <Widget>[]
          ), // Column
        ), // Center
      ), // Scaffold
    ); // MaterialApp
  }
}

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0.0),
              image: DecorationImage(
                image: NetworkImage(
                    'https://lh3.googleusercontent.com/-NP4i3T_RDtM/YE-CtUd9dvI/AAAAAAAAIdk/xctPYcDEj2UX_P-uBMD_gHNTiNrNGKa4gCNcBGAsYHQ/pexels-kaique-rocha-65438.jpg'),
                fit: BoxFit.cover,
              ),
              color: Colors.deepPurpleAccent[400],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Profile'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.sports_handball),
            title: Text('Sport'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Education'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.add_photo_alternate),
            title: Text('Galery'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.add_to_drive),
            title: Text('Drive'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.build_circle_rounded),
            title: Text('Setting'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

class Pictures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,

      height: 200,

      margin: const EdgeInsets.only(top: 40.0),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.100),

        image: DecorationImage(
          image: NetworkImage(
              'https://lh3.googleusercontent.com/-84sZ9K1amTY/YE-CQukSonI/AAAAAAAAIdY/FFZ9KFm4sU8y2pdGx98B54gJOkpNXLkrgCNcBGAsYHQ/IMG_20150626_121017.jpg'),
          fit: BoxFit.cover,
        ), // DecorationImage
      ), // BoxDecoration
    ); // Container
  }
}

class TextName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Marcel Prastiko Arthana',
              style: TextStyle(
                fontSize: 21,
                fontFamily: "Sarif",
                height: 2.0,
                color: Colors.black,
              )),
          Text('1915051013'),
          Text('PTI 4 B'),
          Text('Universitas Pendidikan Ganesha'),
        ],
      ),
      margin: const EdgeInsets.only(top: 20.0),
    ); // Container
  }
}

class FirstRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.yellowAccent[700],
                blurRadius: 10.0,
              ), // BoxShadow
            ],
          ), // BoxDecoration

          width: 150,

          margin: const EdgeInsets.only(top: 20.0),

          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),

              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.menu_book_outlined,
                    size: 50,
                    color: Colors.yellowAccent[700],
                  ), // Icon

                  Text(
                    'Diary',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ) // Text
                ], // <Widget>[]
              ), // Column
            ), // Padding
          ), // Card
        ), // Container

        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.blueAccent[700],
                blurRadius: 10.0,
                spreadRadius: 1.0,
              ), // BoxShadow
            ],
          ), // BoxDecoration

          width: 150,

          margin: const EdgeInsets.only(top: 20.0),

          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),

              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.people_alt_rounded,
                    size: 50,
                    color: Colors.blueAccent[700],
                  ), // Icon

                  Text(
                    'Contacts',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ) // Text
                ], // <Widget>[]
              ), // Column
            ), // Padding
          ), // Card
        ), // Container
      ], // <Widget>[]
    ); // Row
  }
}

class SecondRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.redAccent[700],
                blurRadius: 10.0,
                spreadRadius: 1.0,
              ), // BoxShadow
            ],
          ), // BoxDecoration

          width: 150,

          margin: const EdgeInsets.only(top: 20.0),

          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),

              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.account_circle_sharp,
                    size: 50,
                    color: Colors.redAccent[700],
                  ), // Icon
                  Text(
                    'Account',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ) // Text
                ], // <Widget>[]
              ), // Column
            ), // Padding
          ), // Card
        ), // Container

        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.greenAccent[400],
                blurRadius: 10.0,
                spreadRadius: 1.0,
              ), // BoxShadow
            ],
          ), // BoxDecoration

          width: 150,

          margin: const EdgeInsets.only(top: 20.0),

          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),

              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.house_rounded,
                    size: 50,
                    color: Colors.greenAccent[400],
                  ), // Icon
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ) // Text
                ], // <Widget>[]
              ), // Column
            ), // Padding
          ), // Card
        ), // Container
      ], // <Widget>[]
    ); // Row
  }
}

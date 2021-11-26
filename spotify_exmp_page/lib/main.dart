import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Gotham'),
      title: "demo",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFA35D59),
        leading: BackButton(),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
            ),
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color(0xFF222326),
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.grey))),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Ana Sayfa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Arama',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              label: 'Kitaplığın',
            ),
          ],
          currentIndex: 2,
          fixedColor: Colors.white,
          onTap: null,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFFA35D59), Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.center,
              tileMode: TileMode.clamp),
        ),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assets/images/img1.jpg'),
                  width: 170.0,
                  height: 170.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Debüblüman',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                child: Text(
                  'Follow',
                  style: TextStyle(color: Colors.white),
                ),
                margin: EdgeInsets.only(top: 16.0),
                padding: EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 4.0, bottom: 4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.transparent,
                    border: Border.all(color: Colors.grey, width: 1.0)),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'BY SPOTIFY • 590,864 FOLLOWERS',
                  style: TextStyle(fontSize: 12.0, color: Colors.grey),
                ),
              ),
              Container(
                child: Text(
                  'KARIŞIK ÇAL',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
                padding: EdgeInsets.only(
                    left: 40.0, right: 40.0, top: 16.0, bottom: 16.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xFF2AB859),
                    border: Border.all(color: Color(0xFF2AB859), width: 1.0)),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 4.0, bottom: 4.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Download',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Switch(
                      value: true,
                      onChanged: null,
                      inactiveTrackColor: Colors.green,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

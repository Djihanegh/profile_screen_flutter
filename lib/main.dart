import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
      const StaggeredTile.count(1, 2),
      const StaggeredTile.count(2, 1),
      const StaggeredTile.count(2, 1),
    ];

    List<Widget> _tiles = <Widget>[
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: const _Example01Tile(Colors.green,
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR9Kov8z4EYmGgGqXB8Y1fexbknY8K8XVFsfg&usqp=CAU'),
      ),
      new Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: _Example01Tile(Colors.lightBlue,
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRG3LYgmyR7oBtjQ36bs9hJz3akevudwvRrwg&usqp=CAU'),
      ),
      new Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: const _Example01Tile(Colors.amber,
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRE70h4HoMkldWcwDbs19oB7jBjqQh0Ykg21w&usqp=CAU'),
      ),
    ];

    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          color: Colors.white,
          height: screenHeight,
          child: Stack(
            children: <Widget>[
              Card(
                  color: Colors.white,
                  elevation: 1.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                    width: screenWidth,
                    height: screenHeight / 1.5,
                    child: Expanded(
                        flex: 4,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 40),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    iconSize: 25,
                                    color: Color(0xFF234452),
                                    icon: Icon(Icons.arrow_back),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    iconSize: 25,
                                    color: Color(0xFF234452),
                                    icon: Icon(Icons.more_vert),
                                    onPressed: () {},
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 100, left: 20),
                              child: Text(
                                'My Profile',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color(0xFF234452),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 150, left: 100),
                                child: Column(
                                  children: [
                                    Container(
                                        padding: EdgeInsets.all(4.0),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 2.0,
                                                color: Color(0xFFba6c91)),
                                            shape: BoxShape.circle),
                                        height: 100,
                                        width: 100,
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRBSRjXcriTCkWzrpcF7XdWmuKmSdNSX4dAaQ&usqp=CAU'),
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Anna Alvarado',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Color(0xFF234452),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'School of Music & Drama',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[400],
                                          fontWeight: FontWeight.normal),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'London, UK',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[400],
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                )),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 400, left: 50, right: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Photos',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey[400],
                                              fontWeight: FontWeight.normal),
                                        ),
                                        Text(
                                          '456',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF234452),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Column(children: [
                                      Text(
                                        'Followers',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey[400],
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Text(
                                        '456',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xFF234452),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]),
                                    Column(
                                      children: [
                                        Text(
                                          'Follows',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey[400],
                                              fontWeight: FontWeight.normal),
                                        ),
                                        Text(
                                          '290',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF234452),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ))
                          ],
                        )),
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 470, left: 30, right: 30),
                  child: StaggeredGridView.count(
                    crossAxisCount: 3,
                    staggeredTiles: _staggeredTiles,
                    children: _tiles,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                  ))
            ],
          ),
        ));
  }
}

class _Example01Tile extends StatelessWidget {
  const _Example01Tile(this.backgroundColor, this.iconData);

  final Color backgroundColor;
  final String iconData;

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            alignment: Alignment(-.2, 0),
            image: NetworkImage(iconData),
            fit: BoxFit.cover),
        color: Colors.red,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Dal Lake',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Srinagar, Jammu and Kashmir',
                style: TextStyle(
                  color: Colors.grey[500]
                ),
              ),
            ]
          ),
        ),
        /*3*/
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('41'),
      ]
    ),
  );


  Widget buttonSelection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        /*1*/
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.call, color: Colors.blueAccent),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                'CALL',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400, 
                  color: Colors.blueAccent
                ),
              ),
            )
          ],
        ),
        /*2*/
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.near_me, color: Colors.blueAccent),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                'ROUTE',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400, 
                  color: Colors.blueAccent
                ),
              ),
            )
          ],
        ),
        /*3*/
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.share, color: Colors.blueAccent),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                'SHARE',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400, 
                  color: Colors.blueAccent
                ),
              ),
            )
          ],
        )
      ]
    ),
  );

  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: Text(
      "Dal is a lake in Srinagar, the summer capital of"
      "Jammu and Kashmir, India. The urban lake, which is the "
      "second largest in the union territory, is integral to" 
      "tourism and recreation in Kashmir and is named the" 
      "'Lake of Flowers', 'Jewel in the crown of Kashmir' or" 
      "'Srinagar's Jewel'. The lake is also an important source" 
      "for commercial operations in fishing and water plant" 
      "harvesting.",
      softWrap: true,
    ),
  );


  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Flutter layout practice'),
        // ),
        body: ListView(
          children: [
            Image.asset(
              'Images/dal-lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSelection,
            textSection,
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My Personal Calender',
        style: TextStyle(fontFamily: 'Liu'),
      ),
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,

      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,



        children: <Widget>[
          Flexible(
            flex: 3,
            child: GestureDetector(
              onTap:() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CurrentTasks()),
                );
              },
              child: Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.fromLTRB(30,40, 30, 50),
                color: Colors.cyan[300],
                child: Text('Current Tasks',
                  style: TextStyle(fontFamily: 'Liu', fontSize: 20),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: GestureDetector(
              onTap:() {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EnterTask()));
              },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(20,50, 20, 50),
              color: Colors.pinkAccent[100],
              child: Text('Add New Task!',
                style: TextStyle(fontFamily: 'Liu', fontSize: 20),
              ),
             ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                Flexible(
                  child: Container(

                    padding: EdgeInsets.fromLTRB(50,30, 50, 30),
                    alignment: Alignment.bottomLeft,
                    color: Colors.deepOrangeAccent,
                    child: Text('Check next Task',
                      style: TextStyle(fontFamily: 'Liu', fontSize: 14),
                    ),
                  ),
                ),
                Flexible(
                  child:  Container(
                    padding: EdgeInsets.fromLTRB(50,30, 50, 30),
                    alignment: Alignment.bottomCenter,
                    color: Colors.orangeAccent,
                    child: Text('View Empty Calendar',
                      style: TextStyle(fontFamily: 'Liu', fontSize: 14),
                    ),
                  ),
                ),

              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child:Container(
                color: Colors.blue,
                alignment: Alignment.bottomCenter,
                child: Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.help_outline,
                    color: Colors.lightGreenAccent,
                    size: 50.0,
                  ),
                ),
              ),
              ),
            ],
          ),
          ),

        ],
      ),
    );
  }
}

class CurrentTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('My Personal Calender',
            style: TextStyle(fontFamily: 'Liu'),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightGreenAccent,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 400,
              child: CustomScrollView(

                slivers: <Widget>[
                  SliverAppBar(
                    title: Center(
                      child: Text('Current Tasks:'),
                    ),
                    floating: false,

                    flexibleSpace: Placeholder(),

                    expandedHeight: 400,
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                          (context, item)=>ListTile(title: Text('Item #$item'),),

                      childCount: 100,
                    ),
                  ),
                ],
              ),
            ),

            Column(
              children: <Widget>[
                RaisedButton(
                  child: Text('Home'),
                  onPressed:(){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> Home()),
                    );
                },
                ),
              ],
            ),
          ],
        ),
      );
    }
}

class EnterTask extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Personal Calender',
          style: TextStyle(fontFamily: 'Liu'),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Task Name:'),
              Container(
                width: 200,
                height: 30,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.cyan,
                      border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text('Enter due date in the form mm-dd-year:'),
              Container(
                width: 100,
                height: 40,
                child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.cyan,
                  border: InputBorder.none,
                  hintText: '01-01-2020'
                ),
              ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text('Allocate Time:'),
              Container(
                width: 200,
                  height: 40,
                  child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.cyan,
                  hintText: 'Time required for task'
                ),
               )
              ),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Home'),
                onPressed:(){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> Home()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NextTask extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(

    );
  }
}
class EmptyCalendar{
  
}
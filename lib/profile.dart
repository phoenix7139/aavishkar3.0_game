import 'package:flutter/material.dart';

class Profile_page extends StatefulWidget {
  @override
  _Profile_pageState createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 300,
            color: Colors.deepOrangeAccent[400],
            child:Center(
              child:Container(
                padding: EdgeInsets.all(70),
              child: Center(child:Column(
                children: <Widget>[
                  Center(child:CircleAvatar(
                    radius: 45,
                    child:Image.asset('assets/sky.png'),
                  ),),
                  SizedBox(height: 12,),
                  Center(child:Container(
                    child: Text('SIMRAN SINGH',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                  ),),
                  SizedBox(height: 5,),
                  Center(child:Container(
                    child:Text('location',
                    style:TextStyle(
                      fontSize: 17,
                      color:Colors.white
                    ))
                  ))
                ]
               ) )
            ))
          ),
          Expanded(child:Container(
            width: MediaQuery.of(context).size.width,
            color:Colors.grey,
            padding: EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(5.0)
              ),
              child:Column(
                children: <Widget>[
                  SizedBox(height: 5,),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('User Information',
                    style:TextStyle(
                      fontWeight:FontWeight.bold,
                      color: Colors.black,
                      fontSize: 22
                    )),
                  ),
                  SizedBox(height: 5,),
                  SizedBox(
                    child:Divider(
                    color: Colors.black,
                    ),
                    width: 350
                  ),
                  SizedBox(height: 10,),
                  _eachInfo('Location','Kathmandu', Icon(Icons.my_location)),
                  SizedBox(height: 10,),
                  _eachInfo('Email', 'abcdefgh@gmail.com', Icon(Icons.email)),
                  SizedBox(height: 10,),
                  _eachInfo('Phone', '7595932690', Icon(Icons.phone)),
                  SizedBox(height: 10,),
                  _eachInfo('About Me', 'This is about me', Icon(Icons.person)),
                  SizedBox(height: 10,),
                ],
              )
            ),
          ))
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: Icon(Icons.arrow_back,color: Colors.white,),
        backgroundColor: Colors.blue[800],
      ),
    );
  }
  Widget _eachInfo(String mainheading, String subheading, Widget _icon)
  {
    return  Container(
      padding: EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          _icon,
          SizedBox(width: 20,),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('$mainheading',
                  style:TextStyle(
                    fontWeight:FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18
                  )
                ),
                Text('$subheading',
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  )
                )
               ],
            ),
          ),
        ]
      )
    );
  } 
}
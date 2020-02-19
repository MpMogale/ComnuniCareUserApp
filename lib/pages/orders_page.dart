import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        //leading: Icon(Icons.arrow_back),
        title: Text("Orders",style: TextStyle(fontSize: 24),),
      ),

      body:Container(
        padding: EdgeInsets.symmetric(vertical:50,horizontal:20),
        child: Column(
          children: <Widget>[
            OrderCard(),
          ],
        ),
      )
      
    );
  }
}

final style = TextStyle(fontWeight: FontWeight.bold,fontSize: 16,);
final style1 = TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.lightBlueAccent);

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:20),
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children:<Widget>[
                Text("Soul feast",style: style1,),
                Icon(Icons.cancel)
              ]
            ),
            Row(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   Text("Oder Number : #235456456",style: style,),
                  Text("Date        : 21/2/2020",style: style,)
                  ],
                ),
              ],
            ),
          ],
        ),
        
      ),
    );
  }
}


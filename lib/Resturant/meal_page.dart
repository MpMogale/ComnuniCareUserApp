import 'package:flutter/material.dart';

class MealPage extends StatefulWidget {
  @override
  _MealPageState createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CollapsableHeaderPage(),
      
    );
  }
}

class CollapsableHeaderPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context,bool innerBoxIsScroled){
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text("Soul Food",
                style: TextStyle(
                  fontSize:22,
                  fontWeight:FontWeight.bold),),
                background: Image.asset("assets/chicken.JPG",fit:BoxFit.cover),
              ),
            ),
            
          ];
        },
        body: Column(
          children: <Widget>[
            MealInfo(),
            Container(
              height: 200,
              child: ListView(
                children: <Widget>[
                  MealItem(),
                ],
              ),
            ),
          ],
        ),
        
      );
  }
}

class MealInfo extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Soul food", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            Text("Three Chicken Pieces with Extra chips"),
            Text("Estimated preparations time : R45.00")
          ],
        ),
      ),
    );
  }
}

class MealItem extends StatefulWidget {

  @override
  _MealItemState createState() => _MealItemState();
}

class _MealItemState extends State<MealItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
       child:ExpansionTile(
         title: Text("Extras"),
         initiallyExpanded: true,
         children: <Widget>[
           Align(
             alignment: Alignment.topLeft,
             child: Column(
               children: <Widget>[
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                   Radio(
                     value: 1,
                     groupValue: 1,
                     onChanged: (T){

                     },
                   ),
                   Text("Cheese"),
                   Text("R5.00")

                 ],),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                   Radio(
                     value: 1,
                     groupValue: 1,
                     onChanged: (T){

                     },
                   ),
                   Text("Palony"),
                   Text("R3.00")

                 ],)
               ],
             ),
           ),
         ],
         ) ,
    );
  }
}

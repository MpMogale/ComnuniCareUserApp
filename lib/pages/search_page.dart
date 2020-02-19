import 'package:flutter/material.dart';
import 'package:helloworld/pages/home_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            SearchBar(),
            SizedBox(height: 20,),
            RestaurantCategory(),
            SizedBox(height: 20,),
            RestaurantPair(),
            
            
            
          ],
        ),
      )
    );
  }
}

class RestaurantCategory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("All Restaurant",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),),
        Text("Kasi Restaurant",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),),
        // Container(
        //   color: Colors.indigoAccent,
        // )
  
      ],
    );
  }
}

class RestaurantPair extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        RestaurantCard(),
        RestaurantCard(),
      ],
    );
  }
}


class RestaurantCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
        Container(
          width: 180,
          height: 140,
          child: Image.asset("assets/chicken.JPG",fit:BoxFit.cover),
        ),
        Text("name",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 24),)
      ],)
    );
  }
}
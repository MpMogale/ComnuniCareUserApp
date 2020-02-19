import 'package:flutter/material.dart';
import 'package:helloworld/Resturant/meal_page.dart';

class RestaurantHome extends StatefulWidget {
  @override
  _RestaurantHomeState createState() => _RestaurantHomeState();
}

class _RestaurantHomeState extends State<RestaurantHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Header(),
          RestaurantInfo(),
          MenuCategorie(),
          MenuItem(),
        ],
      ),
    );
  }
}
//Restuarant information
class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset("assets/chicken.JPG"),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Chicken Licken",style: TextStyle(fontSize:22, fontWeight:FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Chicken  Burgers   Wrappers  Nuggets,",style: TextStyle(fontSize:16,color:Colors.grey),),
                    ],
                  ),
                )
              ],
            ),
          ],        
        ),
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,color: Colors.white,
          )
        )
      ],
    );
  }
}

class RestaurantInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      
      title: Text("Restuarant Info"),
      initiallyExpanded: true,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Location"),
                Text("Average Preparation time"),
                Text("Rating")
              ],),
          ),
        )
      ],
      );
  }
}



class MenuCategorie extends StatelessWidget {
  const MenuCategorie({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),        
        child: Text("Item1",style: TextStyle(fontWeight:FontWeight.bold,fontSize:16,),),
      )
    );
  }
}





final style = TextStyle(fontSize: 16,fontWeight: FontWeight.w700,);
class MenuItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MealPage()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Soul Food",style:style),

                  Text("3 Chicken Pieces With Chips ",style: style,),
                  SizedBox(height: 10,),
                  Text("R24.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),)
                ],
              ),
              Image.asset("assets/chicken.JPG",height: 80,width: 80,)
            ],
          ),
        ),
      )
    );
  }
}
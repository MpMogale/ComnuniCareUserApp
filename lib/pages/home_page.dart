import 'package:flutter/material.dart';
import 'package:helloworld/Resturant/restaurant_home.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:ListView(
         children: <Widget>[
           Container(
             margin: EdgeInsets.symmetric(vertical:40,horizontal:20),
             child: Column(
              children: <Widget>[
                LocationBar(),
                SizedBox(height: 20,),
                SearchBar(),
                SizedBox(height: 20,),
                MealOptionsStrip(),
                SizedBox(height: 20,),
                PopularMeal2(),
                SizedBox(height: 20,),
                PopularMeal2(),
                

              ],
            ),
           ),
         ],
       )
    );
  }
}
class MealOptionsStrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
         Text("Popular Food around",style: TextStyle(fontWeight:FontWeight.bold,fontSize:18),),
         Text("View All",style: TextStyle(fontWeight:FontWeight.bold,fontSize:18,color: Colors.lightBlueAccent),),
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal:32,vertical :14),
          hintText: "Search food",
          suffixIcon: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(30),
            child: Icon(
              Icons.search,
              color: Colors.black,),
          ),
          border: InputBorder.none
        ),
      ),
    );
  }
}

class LocationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Order from Around",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
              Text("273 COner Hill , elvis blue ,1875",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,),)
            ],
          ),
          Icon(Icons.my_location)
        ],
      ),
    );
  }
}


class PopularMeal2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
        child: Container(
         height: 340,
         
        child: GestureDetector(
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) => RestaurantHome()));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Material(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 200,
                    child:Image.asset("assets/chicken.JPG",fit: BoxFit.fill,),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Rudzambilu, Midrand Ofice',style: TextStyle(
                fontWeight:FontWeight.bold,fontSize: 22),),
                SizedBox(height: 10,),
                Text('Small ICT busines with focus to technological inovations',style: TextStyle(color:Colors.grey),),
                SizedBox(height: 10,),
                Row(
                  children: <Widget>[
                    Container(
                    color: Colors.grey,
                    child: Text("20-30"),
                  ),
                  SizedBox(width: 80,),
                  Container(
                    color: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Text("3.5"),
                        Icon(Icons.star),
                      ],),
                  )
                ],
              ),
              ],
            ),
          ),
        ),
        
      ),
    );
  }
}
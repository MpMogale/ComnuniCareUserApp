import 'package:flutter/material.dart';
import 'package:helloworld/pages/home_page.dart';
import 'package:helloworld/pages/orders_page.dart';
import 'package:helloworld/pages/search_page.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentTabIndex = 0;
  Widget currentPage;

  List<Widget> pages;

  HomePage homePage;
  SearchPage searchPage;
  OrderPage orderPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homePage = HomePage();
    searchPage = SearchPage();
    orderPage = OrderPage();

    pages =[homePage,searchPage,orderPage];
    currentPage = homePage;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){

          setState(() {
            currentTabIndex =index;
            currentPage = pages[index];
          });

        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home") 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search") 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            title: Text("Orders") 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("profile") 
          )
        ],
      ),
      body: currentPage,
    );
  }
}
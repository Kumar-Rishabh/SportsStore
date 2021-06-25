import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'badminton_screen.dart';
import 'cart_screen.dart';
import 'cricket_screen.dart';
import 'footbal_screen.dart';
import 'others_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=new TabController(length: 4, vsync: this,initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: Image.asset('assets/images/logo.png',
        ),
        title: Text(
          'SportsStore',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/search.svg'),
            onPressed: (){},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/icons/cart.svg'),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
        bottom: new TabBar(

          controller: _tabController,
          tabs: [
            Tab(
                icon: Icon(Icons.sports_cricket,)
            ),
            Tab(
                icon: Icon(Icons.sports_soccer,)
            ),
            Tab(
                icon: Icon(Icons.sports_tennis,)
            ),
            Tab(
                icon: Icon(Icons.sports_kabaddi,)
            ),

          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Cricket_Screen(),
          Football_Screen(),
          Badminton_Screen(),
          Others_Screen(),
        ],
      ),

    );
  }
}







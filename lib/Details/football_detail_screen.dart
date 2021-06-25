import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:sports_store/Components/cart.dart';
import 'package:sports_store/Components/cart_counter.dart';
import 'package:sports_store/models/football_product.dart';
import 'package:sports_store/screens/cart_screen.dart';

import '../constant.dart';

class FootballDetailScreen extends StatelessWidget {
  final Football_Product product;
  FootballDetailScreen(this.product);

  @override
  Widget build(BuildContext context) {
    final cart=Provider.of<Cart>(context);
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.color,
      appBar:buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height*0.3),
                    padding: EdgeInsets.only(
                      top: size.height*0.12,
                      left: 20.0,
                      right: 20.0,
                    ),
                    //height: 500.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(25.0),topLeft: Radius.circular(25.0),),
                    ),
                    child: Column(
                      children: [
                    Row(
                    children: [
                    Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Colors'),
                        Row(
                          children: [
                            ColorDot(color: Color(0xFF356C95),isSelected: true,),
                            ColorDot(color: Color(0xFF34B562)),
                            ColorDot(color: Color(0xFFC1302C)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: RichText(text: TextSpan(
                      style: TextStyle(color: ktextColor),
                      children: [
                        TextSpan(text: 'Size\n'),
                        TextSpan(text: '${product.size}',style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    ),
                  ),
                ],
              ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(product.description,
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CartCounter(),

              Container(
                margin: EdgeInsets.only(top: 30.0),
                padding: EdgeInsets.all(8),
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFF6464),
                ),
                child: SvgPicture.asset('assets/icons/heart.svg',color: Colors.white,),

              ),
            ],
          ),
                        SizedBox(
                          height: 20.0,
                        ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: product.color,
                      )
                  ),
                  child: IconButton(
                    icon: SvgPicture.asset('assets/icons/add-to-cart.svg',color: product.color,),
                    onPressed: (){
                      cart.addItem(product.id.toString(), product.title, product.price.toDouble(),product.image);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        duration: Duration(seconds: 3),
                        content: Text('Item Added to Cart'),
                      ));
                    },
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (){
                        cart.addItem(product.id.toString(), product.title, product.price.toDouble(),product.image);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CartScreen()),
                        );

                      },
                      child: Text(
                          "Buy now".toUpperCase(),
                          style: TextStyle(fontSize: 17)
                      ),
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(product.color),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),

                                  side: BorderSide(color: product.color)
                              )
                          )
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),




                      ],
                    ),

                  ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'English willo bat',
                style: TextStyle(
                  color: Colors.white,
                ),

              ),
              Text(
                product.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [

                  RichText(text: TextSpan(
                    children: [
                      TextSpan(text: 'Price\n'),
                      TextSpan(
                        text: '\R\s${product.price}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                      child: Hero(
                        tag: '${product.id}',
                        child: Image.asset(product.image,
                          fit: BoxFit.fill,
                        ),
                      )
                  )
                ],
              )
            ],
          ),
        ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }


  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg'),
        color: Colors.white,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset('assets/icons/search.svg'),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset('assets/icons/cart.svg'),
          onPressed: () {
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
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  ColorDot({this.color,this.isSelected=false});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 5.0,right: 10.0),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected?color:Colors.transparent,
          )
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
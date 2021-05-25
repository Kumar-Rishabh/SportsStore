import 'package:flutter/material.dart';


class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int countno=1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:35.0),
      child: Row(
        children: [
          bulidOutlineButton(
              icon: Icons.remove,
              press: (){
                if(countno>1){
                  setState(() {
                    countno--;
                  });
                }

              }),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(countno.toString().padLeft(2,'0'),style: Theme.of(context).textTheme.headline6,),
          ),
          bulidOutlineButton(
              icon: Icons.add,
              press: (){
                setState(() {
                  countno++;
                });
              }),
        ],
      ),
    );
  }
}


SizedBox bulidOutlineButton({IconData icon,Function press}){
  return
    SizedBox(
      width: 50.0,
      height: 40.0,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Colors.teal,
        ),
        child: Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Icon(icon),

        ),
        onPressed: press,
      ),
    );
}
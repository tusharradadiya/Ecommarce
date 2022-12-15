import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  double j = 0;
  int i = 1;

  @override
  Widget build(BuildContext context) {
    dynamic list = ModalRoute.of(context)!.settings.arguments;
     i==1?j = list[2]:"";
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
          leading: Icon(Icons.add),
        ),
        backgroundColor: Colors.black12,
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              height: 80,
              child: Row(
                children: [
                  Image.asset("${list[0]}"),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        i++;
                        list[2]=j*i;
                      });
                    },
                    icon: Icon(Icons.add),
                  ),
                  Text("$i"),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (i != 1) {
                          i--;
                          list[2]=j*i;
                        }
                      });
                    },
                    icon: Icon(Icons.remove),
                  ),
                  Text(
                    "U\$ ${list[2]}",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

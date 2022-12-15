import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class detailpage extends StatefulWidget {
  const detailpage({Key? key}) : super(key: key);

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    dynamic list = ModalRoute.of(context)!.settings.arguments;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: (){
              Navigator.pushReplacementNamed(context, '/');
            },
            child: Icon(
                Icons.arrow_back
            ),
          ),
          title: Text("${list[1]}"),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Container(
                height: 200,
                width: 300,
                child: Image.asset("${list[0]}", fit: BoxFit.fill),
              ),
              Text(
                "U\$ ${list[2]}",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context,"/",arguments: [list[0],list[1],list[2]]);
                },
                child: Text("ADD TO CART"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

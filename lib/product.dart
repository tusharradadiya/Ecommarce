import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imag = [
    "assets/images/apple.png",
    "assets/images/banana.png",
    "assets/images/broccoli.png",
    "assets/images/carrot.png",
    "assets/images/kiwi.png",
    "assets/images/orange.png",
    "assets/images/peppers.png",
    "assets/images/strawberry.png",
    "assets/images/watermelon.png"
  ];
  List name = [
    "apple",
    "banana",
    "broccoli",
    "carrot",
    "kiwi",
    "orange",
    "peppers",
    "strawberry",
    "watermelon"
  ];
  List price = [
     3.84,
     4.44,
     3.50,
     12.4,
     6.40,
     5.84,
     3.56,
     8.50,
     7.40,
  ];

  @override
  Widget build(BuildContext context) {
    dynamic list = ModalRoute.of(context)!.settings.arguments;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Fruits"),
          centerTitle: true,
          actions: [
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "cart",arguments: [list[0],list[1],list[2]]);
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.shopping_cart),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black12,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GridView.builder(
            itemCount: 9,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,mainAxisExtent: 220, crossAxisSpacing: 20, mainAxisSpacing: 20),
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "${imag[index]}",
                      fit: BoxFit.fill,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 160, left: 10),
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "${name[index]}",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                context,
                                "detail",
                                arguments: [imag[index], name[index],price[index]],
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.shopping_bag,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

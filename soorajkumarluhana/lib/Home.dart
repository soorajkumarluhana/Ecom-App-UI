import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> ItemImages = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6RR9C45zVojaSC8IOoV-x10WsKleEJZOuHA&usqp=CAU",
    "https://cdn.vox-cdn.com/thumbor/NERX1OJcdoO0D6T9UsH9zsHj4bQ=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/19899784/iPhone_SE_AllColors_34BR_Screen.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIhctxK2uX5A3rRQWHyXpYCJwwjUPJEpm8YA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLxzvF9PPSkYvRz7L4a71IemQQPevWkLX62g&usqp=CAU"
  ];
  List<dynamic> ItemTitle = ["Macbook Pro", "Iphone 7", "HeadFree", "Sony Tv"];
  List<dynamic> CategIcon = [
    Icons.shop,
    Icons.electric_car_rounded,
    Icons.settings_applications,
    Icons.house,
    Icons.arrow_forward,
  ];
  List<dynamic> CateTitle = [
    "Clothes",
    "Electronic",
    "Appliances",
    "HouseHold",
    "Others"
  ];
  List<dynamic> CateSubtitle = [
    "5 item",
    "6 item",
    "10 Item",
    "9 Item",
    "10 Item"
  ];
  List<dynamic> PopImages = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIhctxK2uX5A3rRQWHyXpYCJwwjUPJEpm8YA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl9A0b9cWFs-PiezcmjMENJb_acaJ3yU2tVlb6xn-J08G6Yq6crK3sDuGYQL8ju8hY8Vc&usqp=CAU"
    "https://www.gizmochina.com/wp-content/uploads/2019/09/Apple-iPhone-11-1.jpg",
    "https://www.mobilegeeks.pk/wp-content/uploads/2018/04/samsung-s8-handsfree-ajk.jpg",
    "https://www.gizmochina.com/wp-content/uploads/2019/09/Apple-iPhone-11-1.jpg",
    "https://www.gizmochina.com/wp-content/uploads/2019/09/Apple-iPhone-11-1.jpg",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIhctxK2uX5A3rRQWHyXpYCJwwjUPJEpm8YA&usqp=CAU",
    ];
  List<dynamic> PopTitle = ["Hp Tablet","Macbook Pro","Iphone 7","Handphone","Samsung Tv","Iron","Iphone 12"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 
          "Ecomerce App UI",
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white54,
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.black87,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListTile(
                leading: Text(
                  "Items",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                trailing: Text(
                  "View More",
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
//Completed
              Container(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ItemImages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Card(
                        child: Column(
                          children: [
                            Image.network(ItemImages[index],
                                height: 160, fit: BoxFit.contain),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Text(
                                    ItemTitle[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Text(
                                        "5.0(Reviews)",
                                        style: TextStyle(color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              //Completed
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text("More Categories",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: CategIcon.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 150,
                      child: Card(
                        child: Row(
                          children: [
                            Icon(
                              CategIcon[index],
                              color: Colors.purple,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  CateTitle[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(CateSubtitle[index])
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20,),
              // Completed
              Container(
                alignment: Alignment.bottomLeft,
                child: ListTile(
                  leading: Text(
                    "Popular Items",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  trailing: Text(
                    "View More",
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //  Completed
              Container(
                child: GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: List.generate(PopImages.length, (index) {
                      return Container(
                        height: 600,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Card(
                          child: Column(children: [
                            Image.network(PopImages[index],
                            height: 130,
                            fit: BoxFit.contain,
                            ),
                            Text(PopTitle[index],
                            style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 15
                            ),
                            ),
                             Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 15,
                                      ),
                                      Text(
                                        "5.0(Reviews)",
                                        style: TextStyle(color: Colors.black87,
                                        fontSize: 14
                                        ),
                                        
                                      ),
                                    ],
                                  ),
                          ],),
                        )
                      );
                    })),
              )//Completed
            ],
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

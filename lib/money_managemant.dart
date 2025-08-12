import 'package:flutter/material.dart';
class MoneyManagemant extends StatefulWidget {
  const MoneyManagemant({super.key});

  @override
  State<MoneyManagemant> createState() => _MoneyManagemantState();
}

class _MoneyManagemantState extends State<MoneyManagemant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                  height: 340,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )
                  ),
                ),
                  Container(
                    alignment: Alignment.topLeft,
                    height: 220,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff8D1FE1),
                            Colors.purple,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )
                    ),

                  ),

                  Positioned(
                    top: 55,
                    left: 0,
                    right: 0,
                    child: Container(

                      padding: EdgeInsets.symmetric(horizontal: 20,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("Wallcome Back, Arafath",style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 20,

                              ),),

                            ],
                          ),
                          Icon(Icons.notifications_outlined,size: 30,color: Colors.white,)

                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 110,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 10,
                              blurRadius: 7,
                            )
                          ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Your Balance",style: TextStyle(
                                    color: Color(0xff8D1FE1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                  ),),
                                  Text("500 TK",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w900,
                                  ),),
                                ],
                              ),

                            ),
                            SizedBox(height: 30,),
                            Container(
                              width: double.infinity,
                              child: Divider(
                                color: Colors.grey.withOpacity(0.3),
                                thickness: 2,


                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Text("Your Income",style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),),
                                        Text("500 TK",style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w900,
                                        ),),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Text("Your Expense",style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),),
                                        Text("500 TK",style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w900,
                                        ),),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  )

                ],
              )
            ],
          )
        ],
      ),

    );
  }
}

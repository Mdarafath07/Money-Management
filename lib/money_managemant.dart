import 'package:flutter/material.dart';
class MoneyManagemant extends StatefulWidget {
  const MoneyManagemant({super.key});

  @override
  State<MoneyManagemant> createState() => _MoneyManagemantState();
}

class _MoneyManagemantState extends State<MoneyManagemant> with SingleTickerProviderStateMixin{
 late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  void _showFABOptions(BuildContext context){
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        height: 120,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    _showFrom(isIncome: true);
                  },
                  child: Text(
                    "Add Money",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,
                    color: Colors.white),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    _showFrom(isIncome: false);
                  },
                  child: Text(
                    "Add Expense",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,
                    color: Colors.white),
                  ),
                ),
              ),
          ],

        ),
      );
    });

  }
  void _showFrom({required bool isIncome}){
    TextEditingController titleController = TextEditingController();
    TextEditingController amountController = TextEditingController();
    DateTime enterDate = DateTime.now();
    showModalBottomSheet(context: context, builder: (context){
      return Column(
        children: [
          SizedBox(height: 20,),
          Text(
            isIncome ? "Add Income" : "Add Earning",style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20,
          ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                children: [
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                        hintText: "Enter Title",
                        labelText: "Title",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        floatingLabelStyle: TextStyle(
                          color: Color(0xff8D1FE1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xff8D1FE1)
                            )
                        ),

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            )
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Enter Amount",
                        labelText: "Amount",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        floatingLabelStyle: TextStyle(
                          color: Color(0xff8D1FE1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xff8D1FE1)
                            )
                        ),

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            )
                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isIncome ? Colors.green : Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),

                        ),
                        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                      ),
                      onPressed: (){}, child: Text(isIncome ? "Add Income" : "Add Expense",style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 15,
                    color: Colors.white
                  ),)),
                ],
              ),
            ),
          ),



        ],


      );
    });
  }
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
                  height: 320,
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
          ),
          TabBar(
            controller: _tabController,
              unselectedLabelColor: Colors.grey[400],
              indicatorColor:  Color(0xff8D1FE1),


              labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              tabs:[
            Tab(text: "Income",
              icon: Icon(Icons.arrow_drop_up, size: 18),
              iconMargin: EdgeInsets.only(bottom: 2),
            ),
            Tab(text: "Expense",
              icon: Icon(Icons.arrow_drop_down, size: 18),
              iconMargin: EdgeInsets.only(bottom: 2),
            ),
          ]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>_showFABOptions(context),
        backgroundColor: Color(0xff8D1FE1),
        child: Icon(Icons.add,size: 30,color: Colors.white,),
      ),

    );
  }
}

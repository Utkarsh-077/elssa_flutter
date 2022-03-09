import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Services App"),
      backgroundColor: Colors.black,
      ),
       body: SingleChildScrollView(
         child: Column(children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Image.asset(
                      "assets/images/home.jpg",
                      fit: BoxFit.cover,
                    ),
           ),
           Padding(padding: EdgeInsets.all(10)),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
              
               Icon(Icons.travel_explore, size: 40, ),
               Icon(Icons.emoji_transportation,size: 40,),
               Icon(Icons.home_outlined, size: 40,)],),
       
              Padding(padding: EdgeInsets.all(10)),
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
              
               Icon(Icons.car_repair, size: 40,),
               Icon(Icons.precision_manufacturing_sharp,size: 40,),
               Icon(Icons.home_repair_service_sharp, size: 40,)],),
          
          Padding(
             padding: const EdgeInsets.all(8.0),
             child: Image.asset(
                      "assets/images/home.jpg",
                      fit: BoxFit.cover,
                    ),
           ),
          
         
         
         ],),
       ),
     // bottomNavigationBar: BottomNavigationBar(items: [],),
      bottomNavigationBar: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[

      BottomNavigationBarItem(
        icon: Icon(Icons.call, color: Colors.black,),
        label: 'Calls',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.help, color: Colors.black,),
        label: 'help',
        
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.chat, color: Colors.black,),
        label: 'Chats',
      ),
    ],
  ),
    );
  }
}
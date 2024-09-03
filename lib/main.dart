import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  List myDataList = [
  {
    "name": "sdfghjk",
    "dp": "https://images.pexels.com/photos/1264442/pexels-photo-1264442.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "bg": "https://images.pexels.com/photos/3533228/pexels-photo-3533228.png",
  },
  {
    "name": "John Doe",
    "dp": "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "bg": "https://images.pexels.com/photos/2103127/pexels-photo-2103127.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  },
  {
    "name": "Jane Smith",
    "dp": "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "bg": "https://images.pexels.com/photos/459225/pexels-photo-459225.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  },
  {
    "name": "Michael Brown",
    "dp": "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "bg": "https://images.pexels.com/photos/1302993/pexels-photo-1302993.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  },
  {
    "name": "Emily Davis",
    "dp": "https://images.pexels.com/photos/1183266/pexels-photo-1183266.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "bg": "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  }
];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(child: 
        PageView.builder(
          itemCount: myDataList.length,
      
          itemBuilder: (context, index) => Container(
            
            padding: EdgeInsets.symmetric(horizontal: 17,vertical: 20),
            decoration: BoxDecoration(image:DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                myDataList[index]["bg"]
              )) ),
              child: Column(
                children: [
                Divider(
                  color:Color.fromARGB(255, 227, 224, 224),
                  thickness: 3,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(myDataList[index]["dp"]),
                  
                  ),
                  title: Text(myDataList[index]["name"],
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    
                  ),),
                  subtitle: Text("data",
                  style:TextStyle(color: Colors.white) ,),
                  trailing: Icon(Icons.more_vert,
                  color: Colors.white,),

                ),
                Spacer(),
                Row(children: [
                  Expanded(
                    child: Container(
                          child: Text("send message",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                    
                          ),),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.white,
                          width: 1.5,   
                        ),
                      ),
                                    
                    ),
                  ),
                  SizedBox(width:10 ,),
                  Icon(Icons.favorite_outline,color: Colors.white,
                  size: 37,),
                  SizedBox(width: 10,),
                  Icon(Icons.send_outlined,color: Colors.white,
                  size: 37,),
                ],)
                ],
              ),
          ),
         
          
          
          
        )),

      ),


    );
  }
}
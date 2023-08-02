import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal.shade500,
            title: Text("WhatsApp",style: TextStyle(
                fontSize: 25,
                color: Colors.white70
            ),),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
              IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),

            ],
            toolbarHeight: 70,
            actionsIconTheme: IconThemeData(color:Colors.white70,
                size: 25),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.people),),
                Tab(child: Text("Chats",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),),
                Tab(child: Text("Status",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),),
                Tab(child: Text("Calls",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.pink.shade50,
              ),
              Container(
                child: ListView(
                  padding: EdgeInsets.all(10),
                  children: ListTile.divideTiles( //          <-- ListTile.divideTiles
                      context: context,
                      tiles: [
                        ListTile(
                          title: Text("Alexa Degos",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold
                            ),),
                          subtitle: Text("Good Morning!"),
                          leading: CircleAvatar(backgroundImage: AssetImage("image/Alex.png"),maxRadius: 25,),
                          trailing: Text("09:00"),
                        ),
                        ListTile(
                          title: Text("Rajat",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold
                            ),),
                          subtitle: Text("Ok"),
                          leading: CircleAvatar(backgroundImage: AssetImage("image/Alex.png"),maxRadius: 25,),
                          trailing: Text("08:45"),
                        ),
                        ListTile(
                          title: Text("Rohan",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold
                            ),),
                          subtitle: Text("at school"),
                          leading: CircleAvatar(backgroundImage: AssetImage("image/Alex.png"),maxRadius: 25,),
                          trailing: Text("08:32"),
                        ),
                        ListTile(
                          title: Text("Arnold",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold
                            ),),
                          subtitle: Text("Let's meet in Gym"),
                          leading: CircleAvatar(backgroundImage: AssetImage("image/Alex.png"),maxRadius: 25,),
                          trailing: Text("07:00"),
                        ),
                        ListTile(
                          title: Text("Wanda",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold
                            ),),
                          subtitle: Text("Good Night!"),
                          leading: CircleAvatar(backgroundImage: AssetImage("image/Alex.png"),maxRadius: 25,),
                          trailing: Text("yesterday"),
                        ),
                      ]
                  ).toList(),


                ),
                color: Colors.white,
              ),
              Container(
                color: Colors.green.shade50,
              ),
              Container(
                color: Colors.green.shade50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal.shade500,
            title: const Text("WhatsApp",style: TextStyle(
              fontSize: 25,
              color: Colors.white70
            ),),
            actions: [

              // IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt_outlined)),
              // IconButton(onPressed: (){}, icon: const Icon(Icons.search_rounded)),
              // IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),

            ],
            toolbarHeight: 70,
            actionsIconTheme: const IconThemeData(color:Colors.white70,
            size: 25),
            bottom: const TabBar(
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
                color: Colors.white70,
                child: Center(
              child: SizedBox(
                height: 50,
                child: TextButton(

                  onPressed: () {  },
                  style: TextButton.styleFrom(
                    padding:const EdgeInsets.all(10),
                    backgroundColor: Colors.teal.shade500,
                    shape:const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                  child: const Text("Start your community",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white70
                    ),),
                ),),
          ),
              ),
              Container(
                color: Colors.white,
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  children: ListTile.divideTiles( //          <-- ListTile.divideTiles
                      context: context,
                      tiles: [
                        const ListTile(
                          title: Text("Alexa Degos",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold
                            ),),
                          subtitle: Text("Good Morning!"),
                          leading: CircleAvatar(backgroundImage: AssetImage("image/Alex2.jpg"),maxRadius: 30,),
                          trailing: Text("09:00"),
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        ),
                        const ListTile(
                          title: Text("Rajat",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold
                            ),),
                          subtitle: Text("Ok"),
                          leading: CircleAvatar(backgroundImage: AssetImage("image/Alex2.jpg"),maxRadius: 30,),
                          trailing: Text("08:45"),
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        ),
                        const ListTile(
                          title: Text("Rohan",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold
                            ),),
                          subtitle: Text("at school"),
                          leading: CircleAvatar(backgroundImage: AssetImage("image/Alex2.jpg"),maxRadius: 30,),
                          trailing: Text("08:32"),
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        ),
                        const ListTile(
                          title: Text("Arnold",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold
                            ),),
                          subtitle: Text("Let's meet in Gym"),
                          leading: CircleAvatar(backgroundImage: AssetImage("image/Alex2.jpg"),maxRadius: 30,),
                          trailing: Text("07:00"),
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        ),
                        const ListTile(
                          title: Text("Wanda",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold
                            ),),
                          subtitle: Text("Good Night!"),
                          leading: CircleAvatar(backgroundImage: AssetImage("image/Alex2.jpg"),maxRadius: 30,),
                          trailing: Text("Yesterday"),
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        ),

                      ],

                  ).toList(),
                ),
              ),
              Container(color: Colors.white70,child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                children: ListTile.divideTiles( //          <-- ListTile.divideTiles
                  context: context,
                  tiles: [
                    const ListTile(
                      title: Text("My status",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold
                        ),),
                      subtitle: Text("Tap to add status update"),
                      leading: CircleAvatar(backgroundImage: AssetImage("image/Alex.png"),maxRadius: 30,),
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),
                    const ListTile(
                      title: Text("Rohan",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold
                        ),),
                      subtitle: Text("Today, 11:00"),
                      leading: CircleAvatar(backgroundImage: AssetImage("image/Alex2.jpg"),maxRadius: 30,),
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),
                    const ListTile(
                      title: Text("Rajat",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold
                        ),),
                      subtitle: Text("Today, 10:10"),
                      leading: CircleAvatar(backgroundImage: AssetImage("image/Alex2.jpg"),maxRadius: 30,),
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),
                    const ListTile(
                      title: Text("Arnold",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold
                        ),),
                      subtitle: Text("Today, 09:30"),
                      leading: CircleAvatar(backgroundImage: AssetImage("image/Alex2.jpg"),maxRadius: 30,),
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),
                    const ListTile(
                      title: Text("Wanda",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold
                        ),),
                      subtitle: Text("Today, 07:35"),
                      leading: CircleAvatar(backgroundImage: AssetImage("image/Alex2.jpg"),maxRadius: 30,),
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),

                  ],

                ).toList(),
              ),
              ),
              Container(
                color: Colors.white70,
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  children: ListTile.divideTiles( //          <-- ListTile.divideTiles
                    context: context,
                    tiles: [
                      const ListTile(
                        title: Text("Create call link",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold
                          ),),
                        subtitle: Text("Share a link for your WhatsApp call"),
                        leading: CircleAvatar(backgroundImage: AssetImage("image/Ale.png"),maxRadius: 30,),
                        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      ),
                      ListTile(
                        title: const Text("Wanda",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold
                          ),),
                        subtitle: const Text("Today, 10:10"),
                        leading: const CircleAvatar(backgroundImage: AssetImage("image/Alex2.jpg"),maxRadius: 30,),
                        trailing:IconButton(onPressed: (){}, icon: const Icon(Icons.call)),
                        contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      ),
                      ListTile(
                        title: const Text("Rajat",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold
                          ),),
                        subtitle: const Text("Today, 09:10"),
                        leading: const CircleAvatar(backgroundImage: AssetImage("image/Alex2.jpg"),maxRadius: 30,),
                          trailing:IconButton(onPressed: (){}, icon: const Icon(Icons.video_camera_back_rounded)),
                        contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      ),
                      ListTile(
                        title: const Text("Arnold",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold
                          ),),
                        subtitle: const Text("Today, 08:30"),
                        leading: const CircleAvatar(backgroundImage: AssetImage("image/Alex2.jpg"),maxRadius: 30,),
                          trailing:IconButton(onPressed: (){}, icon: const Icon(Icons.video_camera_back_rounded)),
                        contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      ),
                      ListTile(
                        title: const Text("Wanda",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold
                          ),),
                        subtitle: const Text("Today, 06:35"),
                        leading: const CircleAvatar(backgroundImage: AssetImage("image/Alex2.jpg"),maxRadius: 30,),
                        trailing:IconButton(onPressed: (){}, icon: const Icon(Icons.call)),
                        contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      ),

                    ],

                  ).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
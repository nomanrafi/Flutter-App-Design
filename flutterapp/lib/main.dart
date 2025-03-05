import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.red),
        color: Colors.green,
        debugShowCheckedModeBanner: false,
        home: HomeActivity()

    );
  }
}


class HomeActivity extends StatelessWidget{
  HomeActivity({super.key});


  Mysnacbar(message, context){

    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }


  MyAlertDialog(context){
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return Expanded(
            child: AlertDialog(
              title: Text("Alert !"),
              content: Text("Do you want to delete"),
              actions: [
                TextButton(onPressed: (){
                  Mysnacbar("Delete Success", context);
                  Navigator.of(context).pop();},
                    child: Text("Yes")),
                TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
              ],
            )
        );
      },
    );
  }


  var MyItems=[
    {"img": "https://d3l9a8mvoa6cl8.cloudfront.net/wp-content/uploads/sites/3/2022/07/23203406/How-Does-Coursera-Work.jpg", "title": "Rafi"},
    {"img": "https://d3l9a8mvoa6cl8.cloudfront.net/wp-content/uploads/sites/3/2022/07/23203406/How-Does-Coursera-Work.jpg", "title": "Noman"},
    {"img": "https://d3l9a8mvoa6cl8.cloudfront.net/wp-content/uploads/sites/3/2022/07/23203406/How-Does-Coursera-Work.jpg", "title": "Hasib"},
    {"img": "https://d3l9a8mvoa6cl8.cloudfront.net/wp-content/uploads/sites/3/2022/07/23203406/How-Does-Coursera-Work.jpg", "title": "Shahib"},
    {"img": "https://d3l9a8mvoa6cl8.cloudfront.net/wp-content/uploads/sites/3/2022/07/23203406/How-Does-Coursera-Work.jpg", "title": "Sadik"},
    {"img": "https://d3l9a8mvoa6cl8.cloudfront.net/wp-content/uploads/sites/3/2022/07/23203406/How-Does-Coursera-Work.jpg", "title": "Rakib"},
  ];


  @override
  Widget build(BuildContext context) {


    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
        padding: EdgeInsets.all(10),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
        )
    );


    return Scaffold(

        appBar: AppBar(
          title: Text("MyApp"),
          backgroundColor: Colors.orange,
          titleSpacing: 0,
          centerTitle: false,
          toolbarHeight: 70,
          toolbarOpacity: 1,
          elevation: 0,  //shadow
          actions: [
            IconButton(onPressed: (){Mysnacbar("comments", context);}, icon: Icon(Icons.comment)),
            IconButton(onPressed: (){Mysnacbar("Search", context);}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){Mysnacbar("Settings", context);}, icon: Icon(Icons.settings)),
            IconButton(onPressed: (){Mysnacbar("Email", context);}, icon: Icon(Icons.email)),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          elevation: 10,
          child: Icon(Icons.add),
          backgroundColor: Colors.orange,
          onPressed: (){
            Mysnacbar("Add text", context);
          },
        ),


        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.orange,
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person,  color: Colors.black), label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.contact_phone, color: Colors.black), label: "Contact")
          ],
          onTap: (int index){
            if(index==0){
              Mysnacbar("This is Home Button", context);
            }
            if(index==1){
              Mysnacbar("This is Contact Button", context);
            }
            if(index==2){
              Mysnacbar("This is Profile Button", context);
            }
          },
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  accountName: Text("NomanRafi", style: TextStyle(color: Colors.green),),
                  accountEmail: Text("nomanrafi@gmail.com"),
                  currentAccountPicture: Image.network("https://avatars.githubusercontent.com/u/100467115?v=4"),
                  onDetailsPressed: (){
                    Mysnacbar("This is an image", context);
                  },
                ),
              ),

              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  Mysnacbar("Home Button", context);
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text("Contact"),
                onTap: (){
                  Mysnacbar("Contact Button", context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: (){
                  Mysnacbar("Profile Button", context);
                },
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                onTap: (){
                  Mysnacbar("Email Button", context);
                },
              ),
            ],
          ),
        ),

        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  accountName: Text("NomanRafi", style: TextStyle(color: Colors.green),),
                  accountEmail: Text("nomanrafi@gmail.com"),
                  currentAccountPicture: Image.network("https://avatars.githubusercontent.com/u/100467115?v=4"),
                  onDetailsPressed: (){
                    Mysnacbar("This is an image", context);
                  },
                ),
              ),

              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  Mysnacbar("Home Button", context);
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text("Contact"),
                onTap: (){
                  Mysnacbar("Contact Button", context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: (){
                  Mysnacbar("Profile Button", context);
                },
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                onTap: (){
                  Mysnacbar("Email Button", context);
                },
              ),
            ],
          ),
        ),


        backgroundColor: Colors.black,


        body: ListView.builder(
            itemCount: MyItems.length,
            itemBuilder: (context, index){
              return GestureDetector(
                onTap: (){Mysnacbar(MyItems[index]["title"], context);},
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 200,
                  child: Image.network(MyItems[index]["img"]!, fit: BoxFit.fill),
                ),
              );
            }
        )


      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Click me"),
      //     onPressed: (){
      //       MyAlertDialog(context);
      //       },
      //   ),
      // )



      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: [
      //     // Container(height: 100, width: 100, child: Image.network("https://avatars.githubusercontent.com/u/100467115?v=4")),
      //     // Container(height: 100, width: 100, child: Image.network("https://avatars.githubusercontent.com/u/100467115?v=4")),
      //     // Container(height: 100, width: 100, child: Image.network("https://avatars.githubusercontent.com/u/100467115?v=4")),
      //     TextButton(onPressed: (){Mysnacbar("Text Button", context);}, child: Text("Text Button")),
      //     ElevatedButton(onPressed: (){Mysnacbar("Elevated Button", context);}, child: Text("Elevated Button"), style: buttonStyle,),
      //     OutlinedButton(onPressed: (){Mysnacbar("Outlined Button", context);}, child: Text("Outlined Button")),
      //   ],
      // ),



      // Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: [
      //     Container(height: 100, width: 100, child: Image.network("https://avatars.githubusercontent.com/u/100467115?v=4")),
      //     Container(height: 100, width: 100, child: Image.network("https://avatars.githubusercontent.com/u/100467115?v=4")),
      //     Container(height: 100, width: 100, child: Image.network("https://avatars.githubusercontent.com/u/100467115?v=4")),
      //   ],
      // ),



      // Center(
      //   child: Text("Hello Flutter"),


      // Container(
      //   height: 250,
      //   width: 250,
      //   alignment: Alignment.topCenter,
      //   margin: EdgeInsets.all(50),
      //   padding: EdgeInsets.all(50),
      //   // child: Text("text"),
      //   decoration: BoxDecoration(
      //     color: Colors.orange,
      //     border: Border.all(color: Colors.black, width: 6),
      //   ),
      //   child: Image.network("https://avatars.githubusercontent.com/u/100467115?v=4"),
      //     //https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSDkTmdfCgoXM3lme33vQk8zzgZMW3VkqoFv72p9eAeKkpM6DRoCZi3BfGqNfLAbnXDqr0iHN0o0KFi_hNE_9LlDA
      // ),


      // drawer: (),
      // endDrawer: (),
      // floatingActionButton: (),

    );
  }
}


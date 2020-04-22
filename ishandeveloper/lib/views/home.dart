import 'package:flutter/material.dart';

import 'package:ishandeveloper/widgets/buttons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.deepPurple[900],
          elevation: 0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Portfolio",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
              ),
              Text(
                "for HackForValley",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 12),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Container(
                  height: 200,
                  width: 200,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "http://www.ishandeveloper.com/2020%20[old]/assets/img/profile.JPG",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Hey, I'm Ishan",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 20,
                ),
                child: Text(
                  "I make elegantly professional web apps and flutter apps for a living and also design user experiences. If you want me to do any one of these for you, get in touch with me here.",
                  style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomButtons(
                text: "www.ishandeveloper.com",
                icon: Icons.open_in_browser,
              ),
              SizedBox(
                height: 10,
              ),
              CustomButtons(
                text: "github.com/ishandeveloper",
                icon: Icons.portrait,
              ),
              SizedBox(
                height: 10,
              ),
              CustomButtons(
                text: "instagram/developer.ishan",
                icon: Icons.photo,
              ),
              SizedBox(
                height: 10,
              ),
              CustomButtons(
                text: "linkedin/ishandeveloper",
                icon: Icons.folder_shared,
              ),
              
              SizedBox(height: 50),
              Text(
                "Few Numbers...".toUpperCase(),
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Poppins', fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Projects",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "23",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Downloads",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "5M+",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(vertical:40.0),
                child: Text("Made with ♥ by ishandeveloper",style: TextStyle(fontFamily: 'Poppins',color: Colors.white),),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
          child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Ishan"),
            accountEmail: Text("ishandeveloper@outlook.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "http://www.ishandeveloper.com/2020%20[old]/assets/img/profile.JPG"),
            ),
            onDetailsPressed: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.deepPurple),
            ),
            subtitle: Text("Brief Introduction"),
            onTap: () {},
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: <Widget>[
          Container(
            decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage("assets/artback.jpg"), fit: BoxFit.cover)),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.filter_list,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
                SizedBox(height: 50),
                Text("JetArt", style: TextStyle(fontSize: 36, color: Colors.white)),
                SizedBox(height: 10),
                Text("An artist is not paid for his labor but for his Vision",
                    style: TextStyle(fontSize: 14, color: Colors.white)),
                SizedBox(height: 10),
                Container(
                  child: Material(
                    borderRadius: BorderRadius.circular(25),
                    elevation: 7,
                    child: TextField(
                      onChanged: (text) {},
                      decoration: InputDecoration(
                        focusColor: Colors.transparent,
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                        fillColor: Colors.transparent,
                        filled: true,
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(25)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width * .8,
                ),
              ],
            ),
          ),
          Container(
            child: DraggableScrollableSheet(
              initialChildSize: 0.3,
              minChildSize: 0.1,
              maxChildSize: 0.95,
              builder: (BuildContext context, myscrollController) {
                return Container(
                  color: Colors.tealAccent[200],
                  child: ListView.builder(
                    controller: myscrollController,
                    itemCount: 25,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                          title: Text(
                            'Dish $index',
                            style: TextStyle(color: Colors.black54),
                          ));
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }


}

import 'package:arch_technical_test/pages/home/home_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeListBuilder extends StatefulWidget {

  @override
  _HomeListBuilderState createState() => _HomeListBuilderState();
}

//https://stackoverflow.com/questions/51071906/how-to-keep-the-state-of-my-widgets-after-scrolling

class _HomeListBuilderState extends State<HomeListBuilder> {
  // List<Map<String, dynamic>> data;
  // @override
  // void initState() {
  //   super.initState();
  //
  //   // Generate example items
  //   data = List<Map<String, String>>();
  //   for (int i = 1; i < 100; i++) {
  //     data.add({
  //       "number" : i.toString(),
  //       "isClicked" : false,
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCDF0FF),
      appBar: AppBar(
        title: Text(
          "CHUCK NORRIS FACTS",
          style: GoogleFonts.actor(),
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.info_outline),
              onPressed: () {
                return showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text("HOW TO USE", textAlign: TextAlign.center, style: GoogleFonts.actor(fontWeight: FontWeight.bold),),
                      content: Text("Click on prime numbers to retrieve a random fact about Chuck Norris.\n\nOnce a prime number is clicked, you can no longer retrieve a fact from that same number.",  textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                );
              }),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 101,
              itemBuilder: (context, index) {
                return index.isEven
                    ? HomeItem(primaryColor: Colors.red, num: index)
                    : HomeItem(primaryColor: Colors.green, num: index);
              },
            ),
          ),
          SizedBox(height: 16)
        ],
      ),
    );
  }
}

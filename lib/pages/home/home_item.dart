import 'package:arch_technical_test/pages/chuck_norris_facts/chuck_norris_builder.dart';
import 'package:flutter/material.dart';

class HomeItem extends StatefulWidget {

  final Color primaryColor;
  final int num;
  const HomeItem({Key key, @required this.primaryColor, @required this.num})
      : super(key: key);

  @override
  _HomeItemState createState() => _HomeItemState();
}

class _HomeItemState extends State<HomeItem> {
  var pressed = false;

  bool isNumberPrime() {
    for (var i = 2; i < widget.num; i++) {
      if(widget.num % i == 0) return false;
    }
    return widget.num > 1;
  }

  @override
  Widget build(BuildContext context) {
    final primeNumber = isNumberPrime();
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: GestureDetector(
        onTap: () {
          if(primeNumber && !pressed) {
              return Navigator.push(context,
                MaterialPageRoute(builder: (context) => ChuckNorrisBuilder())
              ).then((_) {
                setState(() {
                  pressed = true;
                });
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("Number: ${widget.num} is now disabled"),
                  duration: Duration(seconds: 1),
                ));
              });
          }
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: SizedBox(
            height: 50,
            child: Stack(
              children: [
                Container(
                  color: widget.primaryColor
                ),
                pressed ? Opacity(
                  opacity: 0.7,
                  child: Container(
                    color: Colors.white,
                  ),
                ) : Container(),
                primeNumber
                    ? Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: (MediaQuery.of(context).size.width - 32) / 2,
                        color: pressed ?
                        widget.num.isEven ? Colors.lightBlueAccent.withOpacity(0.64)
                        : Colors.blue[400].withOpacity(0.54)
                            : Colors.blue,
                      ),
                  )
                : Container(),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      widget.num.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                // pressed ? Align(
                //   alignment: Alignment.centerLeft,
                //   child: Divider(
                //     thickness: 5,
                //     color: Colors.black87,
                //   ),
                // ) : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

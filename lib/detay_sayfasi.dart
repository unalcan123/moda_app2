import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Detay extends StatefulWidget {
  Detay({Key? key, required this.img}) : super(key: key);
  String img;
  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Hero(
          tag: widget.img,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.img), fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          left: 15,
          right: 15,
          bottom: 15,
          child: Material(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 100,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),
                            image: DecorationImage(
                                image: AssetImage('assets/dress.jpg'),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'The data',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Creates a text widget.',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'If the style argument is null,\nthe text will use the style from\nthe closest enclosing\nDefaultTextStyle.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    height: 5,
                    thickness: 3,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$6500',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 15),
                          child: FloatingActionButton(
                            backgroundColor: Colors.brown,
                            onPressed: () {},
                            child: Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Text(
                    'Laminated',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(8),
            ),
            height: 40,
            width: 150,
          ),
          top: MediaQuery.of(context).size.height / 2,
          left: 50,
        )
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:moda_app2/detay_sayfasi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moda App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(
      icon: Icon(
        Icons.more,
        color: Colors.grey,
        size: 25,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.play_arrow,
        color: Colors.grey,
        size: 25,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.navigate_before,
        color: Colors.grey,
        size: 25,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.supervised_user_circle,
        color: Colors.grey,
        size: 25,
      ),
    ),
  ];
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          indicatorColor: Colors.transparent,
          tabs: myTabs,
          controller: _tabController,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Moda App',
          style: const TextStyle(
              fontSize: 24,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          Container(
            // color: Colors.blue.shade300,
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                listeElemani('assets/model1.jpg', 'assets/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model2.jpg', 'assets/louisvuitton.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model1.jpg', 'assets/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model2.jpg', 'assets/louisvuitton.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model1.jpg', 'assets/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model1.jpg', 'assets/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model2.jpg', 'assets/louisvuitton.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model2.jpg', 'assets/louisvuitton.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model2.jpg', 'assets/louisvuitton.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model2.jpg', 'assets/louisvuitton.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model2.jpg', 'assets/louisvuitton.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model3.jpg', 'assets/chloelogo.png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(16),
              //color: Colors.blue.shade300,
              child: Container(
                padding: EdgeInsets.all(16),
                height: 500,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(38),
                            image: const DecorationImage(
                                image: AssetImage('assets/model1.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Daisy',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '34 mint ago',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.more_vert,
                          size: 24,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Creates a fixed size box. The width and height parameters can be null to indicate that the size of the box should not be constrained in the corresponding dimension.',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (contex) =>
                                    Detay(img: 'assets/modelgrid1.jpg'),
                              ),
                            );
                          },
                          child: Hero(
                            tag: 'assets/modelgrid1.jpg',
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: AssetImage('assets/modelgrid1.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (contex) =>
                                        Detay(img: 'assets/modelgrid2.jpg'),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: 'assets/modelgrid2.jpg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                        image:
                                            AssetImage('assets/modelgrid2.jpg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (contex) =>
                                        Detay(img: 'assets/modelgrid3.jpg'),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: 'assets/modelgrid3.jpg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                        image:
                                            AssetImage('assets/modelgrid3.jpg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              'Louis vuis',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: const Center(
                            child: Text(
                              'Louis vuis',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      height: 10,
                      thickness: 3,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.reply,
                          color: Colors.brown.withOpacity(0.2),
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '1.7k',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.comment,
                          color: Colors.brown.withOpacity(0.2),
                          size: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '325',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              color: Colors.grey),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 250,
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                '325',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Montserrat',
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

listeElemani(String imagePath, String logoPath) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover)),
            width: 75,
            height: 75,
          ),
          Positioned(
            left: 50,
            top: 50,
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage(logoPath))),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      Container(
        height: 25,
        width: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.brown),
        child: const Center(
          child: Text(
            'Follow',
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      )
    ],
  );
}

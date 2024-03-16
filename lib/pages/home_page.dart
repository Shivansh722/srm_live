import 'package:flutter/material.dart';
import 'package:live_srm/components/my_drawer.dart';
import 'package:live_srm/components/hidden_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 43, 42, 42),
        iconTheme: IconThemeData(color: Color.fromARGB(225,30,219, 146)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255,254,193,43),
              radius: 20,
              child: CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage('lib/assets/madarchod.png'),
              ),
            ),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: const [
                   TextSpan(
                    text: 'Hello ',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Color(0xFF37B5B6),
                    ),
                  ),
                  TextSpan(
                    text: 'Shivansh',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Color(0xFFF2F597),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  List<Color> cardColors = [Colors.amber, Colors.purple, Colors.blue];

                  return Container(
                    width: 150,
                    margin: EdgeInsets.all(8),
                    child: Card(
                      color: cardColors[index],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Card $index', style: TextStyle(fontSize: 18)),
                          Icon(Icons.star, size: 24),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                "Recent Registrations",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

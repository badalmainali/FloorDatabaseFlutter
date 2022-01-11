import 'package:flutter/material.dart';
import 'package:person_database/screens/insert.dart';

class MainInterface extends StatefulWidget {
  const MainInterface({Key? key}) : super(key: key);

  @override
  _MainInterfaceState createState() => _MainInterfaceState();
}

class _MainInterfaceState extends State<MainInterface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Main Interface',
          style: TextStyle(
            fontFamily: 'Shadow',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            // const Text(
            //   'Welcome to Database System',
            //   textScaleFactor: 2,
            //   style: TextStyle(
            //       fontWeight: FontWeight.normal,
            //       color: Colors.white,
            //       fontFamily: 'Shadow'),
            // ),
            const Image(
              image: NetworkImage(
                  'https://img.search.brave.com/9kyFMbSVfIHJVlcZId_4xbnr-779AasKkpcLYrGhPtE/fit/600/267/ce/1/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvd2VsY29tZS93/ZWxjb21lX1BORzMy/LnBuZw'),
              height: 300,
              width: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Divider(
                thickness: 1,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InsertPeople(),
                  ),
                );
              },
              child: const Text(
                'INSERT DATA',
                textScaleFactor: 1,
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                elevation: 12,
                shadowColor: Colors.white,
                minimumSize: const Size(180, 40),
                animationDuration: const Duration(seconds: 2),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('VIEW DATA'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                elevation: 10,
                shadowColor: Colors.white,
                minimumSize: const Size(180, 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

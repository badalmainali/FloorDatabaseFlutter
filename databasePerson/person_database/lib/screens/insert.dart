import 'package:flutter/material.dart';

class InsertPeople extends StatefulWidget {
  const InsertPeople({Key? key}) : super(key: key);

  @override
  _InsertPeopleState createState() => _InsertPeopleState();
}

class _InsertPeopleState extends State<InsertPeople> {
  //whenever form is created you need to create this variable
  final _formkey = GlobalKey<FormState>();
  //lets create our variable
  String fname = '';
  String lname = '';
  String address = '';
  String age = '';

  //validation for text field
  String? checkValidate(value) {
    if (value == null || value.isEmpty) {
      return "*Field must be filled";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inserting',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'INSERT YOUR DATA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  const Image(
                    image: NetworkImage(
                        'https://img.search.brave.com/0yKCPCJ7NaFa_9W0bhVZuvwqSneaLN592Yr8WGWf2Fg/fit/512/512/ce/1/aHR0cHM6Ly9jZG4y/Lmljb25maW5kZXIu/Y29tL2RhdGEvaWNv/bnMvbmV0d29yay1h/bmQtY29tbXVuaWNh/dGlvbi0yMS8yOC82/OF9kYXRhYmFzZV9z/ZXJ2ZXJfcmFja19z/dG9yYWdlX2RhdGFf/YWRkX2luc2VydC01/MTIucG5n'),
                    height: 130,
                    width: 110,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    //validation
                    validator: checkValidate,
                    //decoration
                    decoration: const InputDecoration(
                      hintText: 'Enter First Name',
                      labelText: 'Fname',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: checkValidate,
                    decoration: const InputDecoration(
                      hintText: 'Enter Last Name',
                      labelText: 'Lname',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: checkValidate,
                    decoration: const InputDecoration(
                      hintText: 'Enter Address',
                      labelText: 'Address',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: checkValidate,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Enter Age',
                      labelText: 'Age',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                    height: 4,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        _formkey.currentState!.save();
                      }
                    },
                    child: const Text(
                      'S U B M I T',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(180, 43),
                      primary: Colors.green,
                      elevation: 12,
                      shadowColor: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    return scaffold;
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyHomePagekkkk extends StatefulWidget {
  const MyHomePagekkkk({Key? key}) : super(key: key);

  @override
  _MyHomePagekkkkState createState() => _MyHomePagekkkkState();
}

class _MyHomePagekkkkState extends State<MyHomePagekkkk> {

  List<String> countries = ['France', 'Germany', 'India', 'Iran'];
  late List<String> visibleCountries;

  @override
  void initState() {
    visibleCountries = countries;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Array Methods: .where()'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Country Name',
              ),
              onChanged: (value) {
                visibleCountries = countries
                    .where((country) => country.contains(value))
                    .toList();
                setState(() {});
              },
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(visibleCountries[index]),
                  );
                },
                itemCount: visibleCountries.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



/*
class MyHomePagekkkk extends StatefulWidget {
  @override
  _MyHomePagekkkkState createState() => _MyHomePagekkkkState();
}

class _MyHomePagekkkkState extends State<MyHomePagekkkk> {
  List<String> countries = ['France', 'Germany', 'India', 'Iran'];
  late List<String> visibleCountries;

  @override
  void initState() {
    visibleCountries = countries;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Array Methods: .where()'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Country Name',
              ),
              onChanged: (value) {
                visibleCountries = countries
                    .where((country) => country.contains(value))
                    .toList();
                setState(() {});
              },
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(visibleCountries[index]),
                  );
                },
                itemCount: visibleCountries.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/

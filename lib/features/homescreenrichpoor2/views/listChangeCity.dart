import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../resoultSearchCityItem/ViewResoultSearchCityItem.dart';

class ListChangeCity extends StatefulWidget {
  const ListChangeCity({Key? key}) : super(key: key);

  @override
  _ChooselocationState createState() => _ChooselocationState();
}

class _ChooselocationState extends State<ListChangeCity> {
  @override
  List<String> countries = ['New York City', 'Los Angeles', 'Chicago', 'Houston', ' Phoenix', 'Philadelphia', 'San Antonio', 'Dallas', 'San Jose', 'Austin', 'Jacksonville', 'Fort Worth', 'Columbus', 'Indianapolis', 'Charlotte', 'San Francisco', 'Seattle', 'Denver',  'Washington', 'Nashville'];
  late List<String> visibleCountries;

  @override
  void initState() {
    visibleCountries = countries;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  visibleCountries = countries
                      .where((country) => (country.toLowerCase()).contains(value.toLowerCase()))
                      .toList();
                  setState(() {});
                },
                decoration: new InputDecoration(
                  prefixIcon: new Icon(Icons.search),
                  labelText: "Search City",
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              )
            ],
          ),
        ),

        Padding(
            padding: EdgeInsets.all(8.0),

            child: SingleChildScrollView(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: visibleCountries.length,
                      itemBuilder: (context,index) {
                        return Card(
                          color: Colors.white,

                          child: ListTile(
                              onTap:(){
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ViewResoultSearchCityItem()
                                ));
                              },
                              title: Text(visibleCountries[index],

                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                              leading: Icon(Icons.location_city)
                          ),
                        );
                      }),
                ],
              ),
            ),
        ),
      ],
    );
  }
}

/*

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> countries = ['France', 'Germany', 'India', 'Iran'];
  List<String> visibleCountries;

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
 */














/*


  List selectingCity(filteredCities,cities){
      for( int i = 0; i <= filteredCities.length -1; i++ ) {
        if (cities[i].contains(cityControllerSearch.toString())){
          filteredCities.add(cities[i]);
        }
      }
      print(filteredCities.toString());
      return filteredCities;
    }


  List <Map> listaAll2 = [];//List.empty(growable: true);
  int counter = 0;

  List selectingCity(listaAll,listaAll2){
    for( int i = 0; i <= listaAll.length -1; i++ ) {
      if (listaAll[i]['city'].contains(cityControllerSearch.toString())) {
        listaAll2.add(listaAll[i]);
      }
    }
    print(listaAll2.toString());
        return listaAll2;
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: cityControllerSearch,
                onChanged: (text) {
                  selectingCity(listaAll,listaAll2);
                },
                decoration: new InputDecoration(
                  prefixIcon: new Icon(Icons.search),
                  labelText: "Search City",
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              )
            ],
          ),
        ),

        Padding(
            padding: EdgeInsets.all(8.0),

            child: SingleChildScrollView(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: selectingCity(listaAll,listaAll2).length,
                      itemBuilder: (context,index) {
                        return Card(
                          color: Colors.white,

                          child: ListTile(

                              onTap:(){
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ViewResoultSearchCityItem()
                                ));
                              },
                              title: Text(listaAll2[index]["city"],


                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                              leading: Icon(Icons.location_city)
                          ),
                        );
                      }),
                ],
              ),
            ),
        ),
      ],
    );
  }
}*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListResoultSearchCityItem extends StatelessWidget {
   ListResoultSearchCityItem({Key? key}) : super(key: key);

  List<String> listaVisivel = ['df','df','df','df','df','df','df','df','df',];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
          itemCount:listaVisivel.length ,
          shrinkWrap: true,
          itemBuilder: (context,index){
            return Card(

              child: ListTile(
                  onTap:(){},
                  subtitle: Text('Location:'),
                  title: Text(listaVisivel[index],
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 50

                    ),

                  ),

                  leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/imageLogo.jpeg'),
                  )
              ),
            );
          },
        )
    );
  }
}
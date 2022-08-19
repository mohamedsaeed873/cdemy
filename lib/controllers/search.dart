import 'package:cdemy/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataSearch extends SearchDelegate{
 List name=[
 'HOME',
 'Categories',
 'Settings',
 'Search',

 ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return[
    IconButton(onPressed: (){
        query = '';
    }, icon: Icon(Icons.clear),)
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return
     IconButton(onPressed: (){
       close(context, null);

     }, icon: Icon(Icons.arrow_back),);

  }

  @override
  Widget buildResults(BuildContext context) {
  return Center(
    child: Text('${query}' , style: TextStyle(fontSize: 20),),
  );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
List filterts = name.where((element) => element.contains(query)).toList();
   return ListView.builder(
     itemCount:query=='' ?name.length : filterts.length,
       itemBuilder: (context , index){
         return InkWell(
           onTap: (){
             query = query==''?name[index] : filterts[index];
             showResults(context);
           },
           child: Padding(
             padding: const EdgeInsets.all(10),
             child: query =='' ? Text('${name[index]}' , style: TextStyle(fontSize: 20),)
             :
               Text('${filterts[index]}' , style: TextStyle(fontSize: 20),),

           ),
         );
       }
   );
  }

}
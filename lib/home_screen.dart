import 'package:color_screen/color_screen.dart';
import 'package:color_screen/component.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white
        ,elevation: 0,

        title: Center(child: Container(
          padding:EdgeInsets.all(10) ,
          
          decoration: BoxDecoration(
            
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.5),

              ]
              
            )
          ),
            child: const Text("color screen",
              style:TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                

              ) ,),

        )) ,


      ),
      body: Container(
          margin: EdgeInsets.all(10),
          child: GridView.count(
            physics:const BouncingScrollPhysics(),
              crossAxisCount: 3,
            children: colorList.map((colorItem) =>
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder:(context)=> ColorScreen(colorItem))
                    );
                  },
                  child: Container(
                    margin:EdgeInsets.only(top: 5,bottom: 10,right: 10,left: 10) ,
                    decoration: BoxDecoration(
                        color: colorItem,
                      borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(2,5),
                              color: Colors.grey,
                              blurRadius: 4


                            )
                          ]
                    ),



                              ),
                )).toList(),


        ),
      ),

    );
  }
}

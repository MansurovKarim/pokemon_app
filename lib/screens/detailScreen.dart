
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_app/data/model.dart';
import 'package:pokemon_app/main.dart';

class detailScreen extends StatelessWidget {
  final Model model;
  const detailScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:
        Scaffold(
          backgroundColor: model.color,
            body: Stack(
              children: [
                Align(
                  alignment: Alignment(2.1, -1.1),
                  child: Icon(
                      Icons.catching_pokemon,
                      size: 400,
                      color: Colors.white.withAlpha(30)
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,

                  child: Container(
                    margin: EdgeInsets.all(7),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.6,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment(0 , -0.7),
                    child: Image.network(model.imageUrl, height: 350),
                ),





                      Container(
                        margin: EdgeInsets.all(17),
                        child: InkWell(
                          onTap: (){
                            return(
                                Navigator.of(context).pop()
                            );
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                Align(
                  alignment: Alignment(-0.5, -0.97),
                  child: Text(
                    model.name, style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),

                  ),
                ),
                Container(
                  margin: EdgeInsets.all(24),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text(model.id, style: TextStyle(fontSize: 20, color: Colors.white , fontWeight: FontWeight.bold),
                      ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.9, -0.4),
                  child: Icon(
                    Icons.chevron_right, color: Colors.white,
                    size: 50,),
                ),

                    ],
                  ),

                )
    );
  }
}

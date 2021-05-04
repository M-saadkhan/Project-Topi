import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Topicard(),
) );

class Topicard extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[900],
      appBar:AppBar(
          title: Text('Project Topi App'),
          centerTitle: true,
          backgroundColor: Colors.grey[850]
      ),
      body:
          Column(
              children:<Widget>[
                Positioned(
                  top:0,
                    child: Image.asset("Assets/pt logo.png",height: 40,)),
               //Container(
                // child: Image.asset("Assets/pt logo.png",height: 40,),
                  /* decoration: BoxDecoration (
                        image: DecorationImage (image: AssetImage('Assets/pt logo.png'),
                fit: BoxFit.contain ,
                 )
                 )*/
               //) ,
                Container(
                child: Padding(padding: EdgeInsets.fromLTRB( 10.0, 20.0, 30.0, 0.0),
                        child:Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                  'User',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    letterSpacing: 2.0,
                                    fontSize: 30.0,
                                  )
                              ),
                              Text(
                                  'Login!',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    letterSpacing: 2.0,
                                    fontSize: 35.0,
                                    fontWeight: FontWeight.bold,
                                  )
                              )
                            ]
                        )
                    )

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding:EdgeInsets.all(10),

                        child: TextField(

                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'abc@gmail.com',
                            fillColor:Colors.black12,
                            filled:true,
                            labelText: 'Email',
                            labelStyle: TextStyle (
                              fontSize: 20,
                              color:Colors.white60 ,

                            )
                          )
                        )
                      ),
                      Container(
                          padding:EdgeInsets.all(10),
                          child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'abc13xyz89',
                                  fillColor:Colors.black12,
                                  filled:true,
                                  labelText: 'Password',
                                  labelStyle: TextStyle (
                                    fontSize: 20,
                                    color:Colors.white60 ,

                                  )
                              )
                          )
                      ),
                      Container(
                        child:FlatButton(
                          color: Colors.black54,
                          child: Text('Login'),
                            textColor:Colors.white60 ,
                          onPressed: (){},
                        )

                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                          children: <Widget>[

                            Container(

                              child: FlatButton (
                                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular(20.0) ),
                                color:Colors.black45  ,
                                child:Text('Facebook'),
                                textColor:Colors.white60 ,
                                padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
                                onPressed: (){},
                              )
                            ),
                            Container(

                                child: FlatButton (
                                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular(20.0) ),
                                color:Colors.black45,
                                child: Text('Gmail'),
                                textColor: Colors.white60 ,
                                padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 25.0),
                                onPressed: (){},
                              )

                            )


                          ]
                      )


                    ],

                  ),
                )
              ],

          ),

    );
  }
}




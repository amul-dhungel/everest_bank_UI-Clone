import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar
       ( 
         bottom: PreferredSize
         (
           child: Row
         (
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image
             (image:AssetImage
             (
              "lib/assets/everest.png"
             ),
             width:350,
             height: 75,
             fit: BoxFit.cover,
             )
           ],
         ),
           preferredSize:Size.fromHeight(25.0)),
         centerTitle: true,
         backgroundColor: Color.fromRGBO(139, 33, 20,1),
        
       ),

          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            backgroundColor: Color.fromRGBO(139, 33, 20,1),
           child: Icon(Icons.add),),
           floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, 

            bottomNavigationBar: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.lock_outline),
                        title: Text('Login'),
                         
                      ),

                       BottomNavigationBarItem(
                        icon: Icon(Icons.payment),
                        title: Text('FonePay'),
                         
                      ),
                       BottomNavigationBarItem(
                        icon: Icon(Icons.location_on),
                        title: Text('Branches'),
                         
                      ),
                       BottomNavigationBarItem(
                        icon: Icon(Icons.help_outline),
                        title: Text('Others'),
                         
                      ),
                      
                      
                      
                  ]
                ),

          
           
           body:ListView(
                       children:<Widget>[
                        Column(
               crossAxisAlignment: CrossAxisAlignment.start,

              children:<Widget>[

                // Container(
                // width: 530,
                // height: 100,
                //   color: Color.fromRGBO(139, 33, 20,1),
                //   child:Image.asset(
                //     'lib/assets/everest.png',
                //   fit: BoxFit.cover,
                // ),
                // ),
                Container(
                height: 200,
                  child: Carousel(
                    boxFit:BoxFit.fitHeight,
                    images: [
                        AssetImage('lib/assets/1.jpg'),
                        AssetImage('lib/assets/2.png'),
                  ]),
          
                  
                ),
          
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget> [
                  SizedBox(height:20.0),
                  Text(
                    'Mobile Number',),
                  SizedBox(height: 10.0,),
                  TextField(
                  
                    decoration: InputDecoration(
                          border: OutlineInputBorder()
                          ),           
                    
                  ),
                 ],
               ),
             ),
              Padding(
               padding: const EdgeInsets.all(10.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget> [
                  SizedBox(height:10.0),
                  Text(
                    'Password',),
                  SizedBox(height: 10.0,),
                  TextField(
                  
                    decoration: InputDecoration(
                          border: OutlineInputBorder()
                          ),           
                    
                  ),

                 ],
               ),
             ),

             Row(
                children: <Widget>[
                 Checkbox(value: false, 
               onChanged: null,
               ),

               Text('Remember Mobile Number'),
              ],
             ),
             SizedBox(height: 10,),

             Center(
               child: Container(
                 margin: EdgeInsets.all(10),
                 height: 45,
                 width: 480,
                 child: RaisedButton(
                   onPressed: (){},
                   color: Color.fromRGBO(139, 33, 20,1),
                   child: Text(
                     'Login',
                     
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 15.0,
                     ),),

                 ),
               ),
             ),
        SizedBox(height: 20,),

              
                 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Icon(Icons.fingerprint),
                     SizedBox(width: 20,),
                   Text(
                     'Tap here to sign in with your finger print',
                     style: TextStyle(
                        letterSpacing: 1.0,
                     ),),
                 ],
               ),
             
             Divider(
               color: Colors.black,
               height: 40,
             ),
      SizedBox(height: 0,),
           
              
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 Text(
                   
                         'Having trouble signing in?',
                         style: TextStyle(
                            letterSpacing: 1.0,
                         ),),
              Text(
                   
                         'Tap here',
                         style: TextStyle(
                            letterSpacing: 1.0,
                            decoration: TextDecoration.underline,
                         ),),
              ],
            ),
            

              Divider(
               color: Colors.black,
               height: 30,
             ),
                 SizedBox(height: 10,),
             
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text(
                   
                         'Connect with us',
                         style: TextStyle(
                            letterSpacing: 1.0,
                         ),),
                 ],),
                SizedBox(height: 20,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                   children:<Widget> [
                     Image.asset('lib/assets/facebook.png',
                     height: 60,
                     width: 60,),

                     ClipRRect(
                       borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset('lib/assets/instagram.png',
                       height: 40,
                       width: 40,),
                     ),

                     Image.asset('lib/assets/twitter.png',
                     height: 40,
                     width: 40,
                      ),

                     Image.asset('lib/assets/youtube.png',
                     height: 60,
                     width: 60,),
                   ],
                 ),

               

             ],
             
             ),
             
                       ], 
           )
        
    );
  }
}
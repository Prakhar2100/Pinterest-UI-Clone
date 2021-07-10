//References :: 
//Hover Button :: 'https://stackoverflow.com/questions/63371978/flutter-web-on-hover-how-to-change-flatbutton-text-color'
//TextField :: 'https://github.com/flutter/flutter/issues/15742',
//StaggeredGridView :: 'https://pub.dev/packages/flutter_staggered_grid_view', 


import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hovering/hovering.dart';

class ActionOnThePeak extends StatefulWidget {

  @override
  BT19CSE032 createState() => BT19CSE032();
}


class BT19CSE032 extends State<ActionOnThePeak> {


//list of all the images required in the project
List<String> actionPicStore = [
    'https://images.unsplash.com/photo-1596727147705-61a532a659bd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFydmVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1534809027769-b00d750a6bac?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFydmVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1561905199-e7adfe8aa7d1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fG1hcnZlbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://64.media.tumblr.com/d6cb7a690ddca43aea189d6f080384d0/f2e5c94488e85dea-08/s400x600/2c7dd4a5efd858c2f41eabaa8e79f33dd22701a0.gifv',
    'https://images.unsplash.com/photo-1532202802379-df93d543bac3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fG1hcnZlbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1594736797933-d0501ba2fe65?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGlyb24lMjBtYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1485846234645-a62644f84728?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bW92aWV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://64.media.tumblr.com/3292ba8680c420a02f0e1c04cf366ed0/tumblr_p8bq5qMUdp1wp4nx2o1_400.gifv',
    'https://images.unsplash.com/photo-1512149177596-f817c7ef5d4c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fG1vdmllfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1614583224978-f05ce51ef5fa?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmFydXRvfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1614583225154-5fcdda07019e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bmFydXRvfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1578632767115-351597cf2477?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YW5pbWV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1581833971358-2c8b550f87b3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YW5pbWV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    // 'https://images.unsplash.com/photo-1611162617213-7d7a39e9b1d7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG5ldGZsaXh8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1560272564-c83b66b1ad12?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vdGJhbGx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1533514114760-4389f572ae26?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVyZmVjdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c3Vuc2V0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1579894333786-1044a30ccd87?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aHVsa3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1436491865332-7a61a109cc05?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWlycGxhbmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1463567517034-628c51048aa2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c2hpcHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1533928298208-27ff66555d8d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW5jZXB0aW9ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1518791127-f4055930e461?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aW5jZXB0aW9ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1548923637-328fb6fbc53a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fGluY2VwdGlvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1572111504021-40abd3479ddb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bW91bnRhaW4lMjBiaWtlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1559540565-12ee332e01c8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fG1vdW50YWluJTIwYmlrZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1541545009001-5b208f3e1116?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fG1vdW50YWluJTIwYmlrZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',

  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(

      //==========================Appbar===================================
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          children: <Widget>[
            //Pinterest logo on the top left corner in the appbar
            Image.asset(
              'pinLogo.png',
              height: 50,
              width: 50,
              alignment: Alignment.topCenter,
            ),

            //Home button on the appbar
            Container(
              constraints: BoxConstraints.tightFor(width: 70, height: 45),
              margin: EdgeInsets.only(left: 3),
              //3 things to implement
              
              child: HoverButton(
                //1: Initially the color is white , on hovering it becomes black
                color: Colors.white,
                hoverColor: Colors.black,
                hoverTextColor: Colors.white,
                //2: Shape of the button should be roundedrectangle
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                //3: The text is Home
                child: Text('Home'),
                onpressed: () {},
              )
            ),

            //Today button on appbar (similar to home button container)
            Container(
              constraints: BoxConstraints.tightFor(width: 70, height: 45),
              margin: EdgeInsets.only(left: 3),
              //3 things to implement
              
              child: HoverButton(
                //1: Initially the color is white , on hovering it becomes black
                color: Colors.white,
                hoverColor: Colors.black,
                hoverTextColor: Colors.white,
                //2: Shape of the button should be roundedrectangle
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                //3: The text is Today
                child: Text('Today'),
                onpressed: () {},
              )
            ),
          ],
        ),

        actions: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 60),
            child: SizedBox(
              //Dimensions of the searchbar
              height: 50,
              width: 870,
              child: TextField(

                cursorColor: Color.fromRGBO(2, 2, 2, 0.3),

                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  //Giving background color to the search bar
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  //Search Bar border outlining
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),

                  hintText: "Search", //placeholder
                ),
              ),
            ),
          ),

          //Notification icon on the appbar
          Container(
            child: IconButton(
              icon: Icon(Icons.notifications_active_rounded),
              onPressed: () => {},
              color: Colors.grey.shade500,
              iconSize: 25,
            ),
          ),

          //Message icon on the appbar
          Container(
            child: IconButton(
              icon: Icon(Icons.message),
              onPressed: () => {},
              color: Colors.grey.shade500,
              iconSize: 25,
            ),
          ),

          //Profile icon on appbar
          Container(
            child: IconButton(
              icon: Icon(Icons.account_circle_rounded),
              onPressed: () => {},
              color: Colors.grey.shade500,
              iconSize: 25,
            ),
          ),

          //Dropdown icon on the appbar
          Container(
            child: IconButton(
              icon: Icon(Icons.arrow_drop_down_rounded),
              onPressed: () => {},
              color: Colors.grey.shade500,
              iconSize: 25,
            ),
          ),
        ],
      ),
      //========================================================================
      
      //==============================Gridview==================================
      //gridview starts here...
      body: Container(
        margin: EdgeInsets.all(15),
        child: StaggeredGridView.countBuilder(
            crossAxisCount: 5, //Number of columns per row
            crossAxisSpacing: 30, //Spacing between images across vertical axis
            mainAxisSpacing: 30,  //Spacing between images across horizontal axis
            itemCount: actionPicStore.length, //Number of images to be included in the screen

            itemBuilder: (context, ind) {
              //Hovering over the image 
              return HoverWidget(
                hoverChild: Container(
                  child: Stack(
                    children: [
                      new Container(
                        padding: EdgeInsets.only(right: 15),
                        margin: EdgeInsets.only(top: 15),
                        
                        //For save button on hovering 
                        child: Align(
                            //Creating save button
                            alignment: Alignment.topRight,
                            child: new ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Save",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                ),
                                primary: Colors.red.shade500,
                                fixedSize: Size(70,45),
                              ),
                            )
                          ),
                      ),

                      //Share on social media widget
                      new Container(
                        child: Positioned(
                          bottom: 15,
                          right: 70,
                          child: IconButton(
                            icon: Icon(Icons.upload_rounded),
                            onPressed: () => {},
                            color: Colors.black,
                          ),
                        )
                      ),

                      //3 dots icon widget
                      new Container(
                        child: Positioned(
                          bottom: 15,
                          right: 20,
                          child: IconButton(
                            icon: Icon(Icons.more_horiz),
                            onPressed: () => {},
                            color: Colors.black,
                          ),
                        )
                      ),

                      
                      new Container(
                        child: Positioned(
                              left: 15,
                              bottom: 15,
                              child: new ElevatedButton(
                                
                                // color: Colors.white.withOpacity(0.5),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.subdirectory_arrow_right_outlined,
                                    ),
                                    Text(
                                      "url",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ]
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: new RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                  ),
                                  primary: Colors.red.shade500,
                                  fixedSize: Size(50,45),
                                ),
                                
                              )
                            ),
                      ),
                    ],
                  ),
                  
                  //Blurring the image on hovering.. 
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                        //Taking images from the picture store array created above
                        image: new NetworkImage(actionPicStore[ind]),

                        colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.6), BlendMode.dstATop  //Blur while hovering
                        ),

                        fit: BoxFit.cover, //For covering the image in whole box
                        
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
                
                child: Container(
                  
                  //Cliping the image inside the container
                  child: ClipRRect(
                    //RoundedRectangle types images
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    //Flutter cook-book code part
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: actionPicStore[ind],
                      fit: BoxFit.cover, //To completely cover the image in the container
                    ),
                  ),
                ),
                
                onHover: (event) {}, //As and when hovering occurs..
              );
            },

            staggeredTileBuilder: (ind) {

              //Creating a random grid pattern
              if(ind == 4 || ind == 7 || ind == 10 || ind == 13 || ind == 16 || ind == 19){
                return StaggeredTile.count(1,0.8);
              }
              else if(ind.isEven){
                return StaggeredTile.count(1,1.5);
              }
              else{
                return StaggeredTile.count(1,1);
              }
            }
        ),
      ),
      //===========================================================================
    );
  }
}

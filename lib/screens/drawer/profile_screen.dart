import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Profile'),
        // ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: -100,
              left: -100,
              right: -100,
              child: ClipOval(
                child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF9BB548), Colors.white],
                      ),
                    ),
                    height: 300.0,
                    width: double.infinity,
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 10,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black,),
                      onPressed: ()
                      {
                        Navigator.pop(context);
                      }
                  ),
                  Text(
                    'Profile',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.transparent,),
                      onPressed: (){}
                  ),
                ],
              ),
            ),
            Positioned(
              top: 130,
              child: Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 3.0,
                      ),
                    ],
                  shape: BoxShape.circle,
                  color: Colors.white
                ),
                child: Text(
                  'H.M',
                  style: Theme.of(context).textTheme.subtitle1,),
              ),
            ),
            Positioned(
              top: 240,
              right: 10,
              left: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    child: Text('Personal Details ',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    color: Colors.grey[100],
                    width: double.infinity,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name : ',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Text('Email : ',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Text('Phone : ',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                        ),
                        SizedBox(width: 30,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mohammad',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            Text('moh@gmail.com',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            Text('+9665000000000',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Align(
                    child: Text('Location Details ',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    color: Colors.grey[100],
                    width: double.infinity,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Home : ',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Text('Office : ',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                        ),
                        SizedBox(width: 30,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('الرياض',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            Text('جده',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

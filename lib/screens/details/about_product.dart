import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/help/help.dart';
import 'package:food_delivery_app/provider/provider.dart';
import 'package:provider/provider.dart';

class AboutProduct extends StatefulWidget {

  @override
  _AboutProductState createState() => _AboutProductState();
}

class _AboutProductState extends State<AboutProduct> {
  bool _value = false;
  int val = 1;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Consumer<ProviderApp>(
          builder: (context, myCount, child)
          {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: CachedNetworkImage(
                        placeholder: (BuildContext context, index)=> Center(child: CircularProgressIndicator()),
                        imageUrl:
                        'https://m.media-amazon.com/images/I/61sf8NOL72L._AC_SX425_.jpg',
                        fit: BoxFit.cover,
                        height: 200,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hot Spanish Latte',
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text('Sandwiches, Fast Food, Desserts',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: defaultColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text('35 Eg',
                              style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white)),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      color: Colors.grey,
                    ),
                    Text('Z Add A Syrup',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(height: 5,),
                    Text('Taste',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Radio(
                          value: 1,
                          groupValue: val,
                          onChanged: (value) {
                            setState(() {
                              val = value;
                            });
                          },
                          activeColor: defaultColor,
                        ),
                        Text('Good test',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text('+2.0 SR ',
                          style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.grey[400], fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Radio(
                          value: 2,
                          groupValue: val,
                          onChanged: (value) {
                            setState(() {
                              val = value;
                            });
                          },
                          activeColor: defaultColor,
                        ),
                        Text('Good test',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text('+2.0 SR ',
                          style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.grey[400], fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Radio(
                          value: 3,
                          groupValue: val,
                          onChanged: (value) {
                            setState(() {
                              val = value;
                            });
                          },
                          activeColor: defaultColor,
                        ),
                        Text('Good test',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text('+2.0 SR ',
                          style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.grey[400], fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: ()
                          {
                            myCount.decCount();
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(1,1),
                                      blurRadius: 6
                                  ),
                                  BoxShadow(
                                      color:Colors.grey[100],
                                      offset: Offset(-1,-1),
                                      blurRadius: 6
                                  ),
                                ],
                                shape: BoxShape.circle,
                                color: Colors.grey[400]),
                            child: Icon(
                              Icons.remove,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Text('${myCount.myCount}',
                          style: Theme.of(context).textTheme.bodyText2.copyWith( fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 15,),
                        GestureDetector(
                          onTap: ()
                          {
                            myCount.incCount();
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(1,1),
                                      blurRadius: 6
                                  ),
                                  BoxShadow(
                                      color:Colors.grey[100],
                                      offset: Offset(-1,-1),
                                      blurRadius: 6
                                  ),
                                ],
                                shape: BoxShape.circle,
                                color: defaultColor),
                            child: Icon(
                              Icons.add,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Align(
                      child: Container(
                        width: size.width / 1.2,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        decoration: BoxDecoration(
                          color: defaultColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Text('Add to Cart ',
                              style: Theme.of(context).textTheme.subtitle1.copyWith(color: Colors.white),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: VerticalDivider(
                                thickness: 1.5,
                                color: Colors.white,
                              ),
                            ),
                            Text('35 Eg',
                                style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white)),
                          ],
                        )
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

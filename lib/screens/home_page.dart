import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/help/help.dart';
import 'package:food_delivery_app/provider/provider.dart';
import 'package:food_delivery_app/screens/cart/cart_screen.dart';
import 'package:food_delivery_app/screens/details/about_restaurant.dart';
import 'package:provider/provider.dart';

import 'drawer/main_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 10),
            child: Column(
              children: [
                Text('Find Your Favorite Food',),
                Text('IN Your City'),
              ],
            ),
          ),
        ),
          drawer: MainDrawer(),
          body: ChangeNotifierProvider<ProviderApp>(
          create: (context)=> ProviderApp(),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: size.height / 18,
                        width: size.width / 1.35,
                        child: TextField(
                         // controller: _massage,
                          decoration: InputDecoration(
                              labelText: 'Search',
                              labelStyle: Theme.of(context).textTheme.bodyText2,
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              )
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                          color: defaultColor,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child:
                           Icon(Icons.location_on, color: Colors.white,),
                      )
                    ],
                  ),
                  //Scroll
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Consumer<ProviderApp>(
                        builder: (context, currentIndex, child)
                        {
                         return   Row(
                           children: [
                             buttonsMainCategoryState(
                                 text: 'All',
                                 icon: Icons.border_all_sharp,
                                 color: currentIndex.currentIndex == 0 ? defaultColor : Colors.white,
                                 function: ()
                                 {
                                   currentIndex.inc();
                                 }
                             ),
                             buttonsMainCategoryState(
                                 text: 'Coffee',
                                 icon: Icons.whatshot_sharp,
                                 color: currentIndex.currentIndex ==1 ? defaultColor : Colors.white,
                                 function: ()
                                 {
                                   currentIndex.inc();
                                 }
                             ),
                             buttonsMainCategoryState(
                                 text: 'International ',
                                 icon: Icons.location_searching,
                                 color: currentIndex.currentIndex ==2 ? defaultColor : Colors.white,
                                 function: ()
                                 {
                                   currentIndex.inc();
                                 }
                             ),
                             buttonsMainCategoryState(
                                 text: 'Coffee',
                                 color: currentIndex.currentIndex ==3 ? defaultColor : Colors.white,
                                 function: ()
                                 {
                                   currentIndex.inc();
                                 }
                             ),
                           ],
                         );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 1,
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: GestureDetector(
                          onTap: ()
                          {
                            helpNavigateTo(context, AboutRestaurant());
                          },
                          child: helpContainerShadow(
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CachedNetworkImage(
                                    placeholder: (BuildContext context, index)=> Center(child: CircularProgressIndicator()),
                                    imageUrl:
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/2339px-McDonald%27s_Golden_Arches.svg.png',
                                    fit: BoxFit.contain,
                                    width: size.width / 2.8,
                                    height: 50,
                                  ),
                                  Flexible(
                                    flex: 3,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('McDonald\' s KSA ',
                                            style: Theme.of(context).textTheme.bodyText1,
                                          ),
                                          Text('Sandwiches, Fast Food, Desserts', overflow: TextOverflow.ellipsis,),
                                          Text('Open'),
                                        ],
                                      )
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.star, color: Colors.amber, size: 15,),
                                          Text('4.5')
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text('2.5'),
                                          Text('Km')
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      separatorBuilder: (context, index) => SizedBox(height: 1,),
                      itemCount: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()
          {
            helpNavigateTo(context, CartScreen());
          },
          backgroundColor: defaultColor,
          child: Icon(Icons.add_shopping_cart_sharp),
        )

      ),
    );
  }
}



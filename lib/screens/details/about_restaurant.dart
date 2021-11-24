import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/help/help.dart';
import 'package:food_delivery_app/provider/provider.dart';
import 'package:food_delivery_app/screens/cart/cart_screen.dart';
import 'package:food_delivery_app/screens/details/about_product.dart';
import 'package:provider/provider.dart';

class AboutRestaurant extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height / 2.5,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200],
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(5, 3), // changes position of shadow
                        ),
                      ]
                  ),
                  child: Column(
                    children: [
                      Flexible(
                        child: Stack(
                          children: [
                            Image.network( 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/2339px-McDonald%27s_Golden_Arches.svg.png',
                              fit: BoxFit.contain,
                              width: size.width,
                            ),
                            Positioned(
                              top: 2,
                              right: 10,
                              child: GestureDetector(
                                onTap: ()
                                {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1,1),
                                          blurRadius: 6
                                      ),
                                    ]
                                  ),
                                  child: Icon(
                                    Icons.close,
                                    size: 25,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('McDonald\' s KSA ',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Text('Sandwiches, Fast Food, Desserts',
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text('Open'),
                            ],
                          ),
                          Spacer(),
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
                      SizedBox(height: 5,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Consumer<ProviderApp>(
                      builder: (context, currentIndex, child)
                      {
                        return   Row(
                          children: [
                            Icon(Icons.search),
                            buttonsMainCategory(
                                text: 'Exclusive Offer ',
                                colorText: currentIndex.currentIndex == 0 ? Colors.white : Colors.black,
                                color: currentIndex.currentIndex == 0 ? defaultColor : Colors.white,
                                function: ()
                                {
                                  currentIndex.inc();
                                }
                            ),
                            buttonsMainCategory(
                                text: 'Top Selling ',
                                colorText: currentIndex.currentIndex == 1 ? Colors.white : Colors.black,
                                color: currentIndex.currentIndex ==1 ? defaultColor : Colors.white,
                                function: ()
                                {
                                  currentIndex.inc();
                                }
                            ),
                            buttonsMainCategory(
                                text: 'International ',
                                colorText: currentIndex.currentIndex == 2 ? Colors.white : Colors.black,
                                color: currentIndex.currentIndex ==2 ? defaultColor : Colors.white,
                                function: ()
                                {
                                  currentIndex.inc();
                                }
                            ),
                            buttonsMainCategory(
                                text: 'New Items ',
                                colorText: currentIndex.currentIndex == 3 ? Colors.white : Colors.black,
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
                Text('Exclusive Offer ',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(
                  height: size.height /2.5,
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: GestureDetector(
                        onTap: ()
                        {
                         helpNavigateTo(context, AboutProduct());
                        },
                        child: helpContainerShadow(
                          Row(
                            children: [
                              CachedNetworkImage(
                                placeholder: (BuildContext context, index)=> Center(child: CircularProgressIndicator()),
                                imageUrl:
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/2339px-McDonald%27s_Golden_Arches.svg.png',
                                fit: BoxFit.contain,
                                width: 80,
                                height: 80,
                              ),
                              Flexible(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('One Assorted Dozen + One Do',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context).textTheme.bodyText1,
                                      ),
                                      Text('200 Calories ',
                                        style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.grey[400], fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                              icon: Icon(Icons.local_offer_rounded, color: defaultColor,), onPressed: (){}),
                                          Text('70.00 SR',
                                            style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.grey[400], fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => SizedBox(height: 1,),
                    itemCount: 2,
                  ),
                ),
                SizedBox(height: 10,),
                Text('Top Selling ',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(
                  height: size.height /2.5,
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: GestureDetector(
                        onTap: ()
                        {
                          // helpNavigateTo(context, AboutRestaurant());
                        },
                        child: helpContainerShadow(
                          Row(
                            children: [
                              CachedNetworkImage(
                                placeholder: (BuildContext context, index)=> Center(child: CircularProgressIndicator()),
                                imageUrl:
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/2339px-McDonald%27s_Golden_Arches.svg.png',
                                fit: BoxFit.contain,
                                width: size.width / 2.5,
                                height: 90,
                                // imageBuilder: (context, imageProvider) => Stack(
                                //     children: [
                                // Padding(
                                // padding: const EdgeInsets.all(8.0),
                                // child: Container(
                                //   height: MediaQuery.of(context).size.height / 6,
                                //   // width: MediaQuery.of(context).size.width / 1.2,
                                //   decoration: BoxDecoration(
                                //     shape: BoxShape.circle,
                                //     image: DecorationImage(
                                //         image: imageProvider, fit: BoxFit.cover),
                                //   ),
                                // ),
                              ),
                              Flexible(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('One Assorted Dozen + One Do',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context).textTheme.bodyText1,
                                      ),
                                      Text('200 Calories ',
                                        style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.grey[400], fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                              icon: Icon(Icons.local_offer_rounded, color: defaultColor,), onPressed: (){}),
                                          Text('70.00 SR',
                                            style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.grey[400], fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => SizedBox(height: 1,),
                    itemCount: 2,
                  ),
                ),
                Text('New items ',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(
                  height: size.height /2,
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: GestureDetector(
                        onTap: ()
                        {
                           helpNavigateTo(context, AboutProduct());
                        },
                        child: helpContainerShadow(
                          Row(
                            children: [
                              CachedNetworkImage(
                                placeholder: (BuildContext context, index)=> Center(child: CircularProgressIndicator()),
                                imageUrl:
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/2339px-McDonald%27s_Golden_Arches.svg.png',
                                fit: BoxFit.contain,
                                width: size.width / 2.5,
                                height: 90,
                              ),
                              Flexible(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('One Assorted Dozen + One Do',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context).textTheme.bodyText1,
                                      ),
                                      Text('200 Calories ',
                                        style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.grey[400], fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                              icon: Icon(Icons.local_offer_rounded, color: defaultColor,), onPressed: (){}),
                                          Text('70.00 SR',
                                            style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.grey[400], fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => SizedBox(height: 1,),
                    itemCount: 2,
                  ),
                ),
              ],
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

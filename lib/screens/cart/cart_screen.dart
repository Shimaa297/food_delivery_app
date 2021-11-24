import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/help/help.dart';

class CartScreen extends StatefulWidget {

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Order Details ',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(height: size.height / 2.5,
                child: ListView.builder(
                    itemBuilder: (BuildContext context, index)=>  helpContainerShadow(
                        Row(
                         // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                              child: Image.network(
                                'https://media1.popsugar-assets.com/files/thumbor/twb5cYPcKOvHqo7A3PI2ywX-v38/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2017/12/20/368/n/38922820/tmp_EX6RXp_b8b917597386648e_Screen_Shot_2017-12-20_at_11.26.28_AM.png',
                                fit: BoxFit.cover,
                                width: size.width / 2.5,
                                height: 100,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Grilled chicken fingers',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                Text('14.99',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.close),
                                    color: Colors.red,
                                    onPressed: (){}
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.close, color: Colors.grey, size: 15,),
                                    Text('1',
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                    ),
                  itemCount: 2,
                ),
              ),
              Container(
                height: size.height / 12,
                width: size.width,
                child: TextField(
                  //controller: _massage,
                  decoration: InputDecoration(
                      labelText: 'Add Note..',
                      labelStyle: Theme.of(context).textTheme.bodyText2,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )
                  ),
                ),
              ),
              SizedBox(height: 5,),
              helpContainerShadow(
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Delivery Address',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text('Office الرياض',
                            style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.grey[400], fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: defaultColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.location_on, color: Colors.white,),),
                      ),
                    ],
                  ),
                )
              ),
              Text('Delivery Prices',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(height: 5,),
              Align(
                child: Container(
                  height: 50,
                  width: size.width / 1.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.16),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]
                  ),
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Container(
                        height: 50,
                        width: size.width / 1.2,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 7, left: 40),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                // DraggableScrollableSheet(
                                //   // initialChildSize: 0.4,
                                //   // minChildSize: 0.1,
                                //   // maxChildSize: 0.8,
                                //   builder: (context, controller)=> Container(
                                //     color: Colors.grey,
                                //     child: Flexible(
                                //       child: ListView.builder(
                                //         controller: controller,
                                //         shrinkWrap: true,
                                //         scrollDirection: Axis.vertical,
                                //         itemBuilder: (context, index) => Padding(
                                //           padding: const EdgeInsets.symmetric(horizontal: 8),
                                //           child: GestureDetector(
                                //             onTap: ()
                                //             {
                                //               //    helpNavigateTo(context, AboutRestaurant());
                                //             },
                                //             child: Flexible(
                                //               child: helpContainerShadow(
                                //                 Row(
                                //                   children: [
                                //                     CachedNetworkImage(
                                //                       placeholder: (BuildContext context, index)=> Center(child: CircularProgressIndicator()),
                                //                       imageUrl:
                                //                       'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/2339px-McDonald%27s_Golden_Arches.svg.png',
                                //                       fit: BoxFit.contain,
                                //                       width: size.width / 2.5,
                                //                       height: 100,
                                //                     ),
                                //                     Flexible(
                                //                         flex: 3,
                                //                         child: Column(
                                //                           crossAxisAlignment: CrossAxisAlignment.start,
                                //                           children: [
                                //                             Text('McDonald\' s KSA ',
                                //                               style: Theme.of(context).textTheme.bodyText1,
                                //                             ),
                                //                             Text('Sandwiches, Fast Food, Desserts', overflow: TextOverflow.ellipsis,),
                                //                             Text('Open'),
                                //                           ],
                                //                         )
                                //                     ),
                                //                     Column(
                                //                       children: [
                                //                         Row(
                                //                           children: [
                                //                             Icon(Icons.star, color: Colors.amber, size: 15,),
                                //                             Text('4.5')
                                //                           ],
                                //                         ),
                                //                         Row(
                                //                           children: [
                                //                             Text('2.5'),
                                //                             Text('Km')
                                //                           ],
                                //                         ),
                                //                       ],
                                //                     ),
                                //                   ],
                                //                 ),
                                //               ),
                                //             ),
                                //           ),
                                //         ),
                                //         itemCount: 10,
                                //       ),
                                //     ),
                                //   ),
                                // );
                  //               showBottomSheet(
                  // context: context,
                  // builder: (_)=> Container(
                  //   height: size.height * 1,
                  //   child: ListView.separated(
                  //     padding: EdgeInsets.zero,
                  //     shrinkWrap: true,
                  //     scrollDirection: Axis.vertical,
                  //     itemBuilder: (context, index) => Padding(
                  //       padding: const EdgeInsets.symmetric(horizontal: 8),
                  //       child: GestureDetector(
                  //         onTap: ()
                  //         {
                  //           //    helpNavigateTo(context, AboutRestaurant());
                  //         },
                  //         child: helpContainerShadow(
                  //           Row(
                  //             children: [
                  //               CachedNetworkImage(
                  //                 placeholder: (BuildContext context, index)=> Center(child: CircularProgressIndicator()),
                  //                 imageUrl:
                  //                 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/2339px-McDonald%27s_Golden_Arches.svg.png',
                  //                 fit: BoxFit.contain,
                  //                 width: size.width / 2.5,
                  //                 height: 100,
                  //               ),
                  //               Flexible(
                  //                   flex: 3,
                  //                   child: Column(
                  //                     crossAxisAlignment: CrossAxisAlignment.start,
                  //                     children: [
                  //                       Text('McDonald\' s KSA ',
                  //                         style: Theme.of(context).textTheme.bodyText1,
                  //                       ),
                  //                       Text('Sandwiches, Fast Food, Desserts', overflow: TextOverflow.ellipsis,),
                  //                       Text('Open'),
                  //                     ],
                  //                   )
                  //               ),
                  //               Column(
                  //                 children: [
                  //                   Row(
                  //                     children: [
                  //                       Icon(Icons.star, color: Colors.amber, size: 15,),
                  //                       Text('4.5')
                  //                     ],
                  //                   ),
                  //                   Row(
                  //                     children: [
                  //                       Text('2.5'),
                  //                       Text('Km')
                  //                     ],
                  //                   ),
                  //                 ],
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     separatorBuilder: (context, index) => SizedBox(height: 1,),
                  //     itemCount: 10,
                  //   ),
                  // ),
              //);
                              });

                            },
                            child: Text(
                              'Cheaper',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(color: defaultColor, ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 2,
                        child: Container(
                          height: 45,
                          width: size.width / 2.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: defaultColor,
                          ),
                          child: Center(
                              child: Text(
                                'Faster',
                                style: Theme.of(context).textTheme.subtitle1
                                    .copyWith(color: Colors.white, fontSize: 20),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
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
                        openBottomSheet(context);
                      },
                      child: helpContainerShadow(
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CachedNetworkImage(
                                placeholder: (BuildContext context, index)=> Center(child: CircularProgressIndicator()),
                                imageUrl:
                                'https://uploads-ssl.webflow.com/5ff969c3e94da0f548f6d9fd/6053208f93709628bf19eca6_uber.jpeg',
                                fit: BoxFit.contain,
                                width: size.width / 3,
                                height: 60,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('40.00 SR',
                                    style: Theme.of(context).textTheme.subtitle1,
                                  ),
                                  Text('Delivery time 40 minutes', overflow: TextOverflow.ellipsis,),
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
    );
  }
}


void openBottomSheet(context)
{
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context)
      {
        return Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              color: Colors.white,
            ),
            child: Wrap(
              children: [
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: CachedNetworkImage(
                      placeholder: (BuildContext context, index)=> Center(child: CircularProgressIndicator()),
                      imageUrl:
                      'https://uploads-ssl.webflow.com/5ff969c3e94da0f548f6d9fd/6053208f93709628bf19eca6_uber.jpeg',
                      fit: BoxFit.contain,
                      height: 60,
                    ),
                  ),
                  title:  Text('UberX',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  subtitle: Text('Provided by Uber',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  trailing: GestureDetector(
                    onTap: ()
                    {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
                Divider(color: Colors.grey,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.close, size: 12, color: defaultColor,),
                          Text('1',
                            style: Theme.of(context).textTheme.bodyText1.copyWith(color: defaultColor),
                          ),
                        ],
                      ),
                      Text('Hot Spanish Latte ',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text('SR 135.0',
                        style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.grey),
                      ),
                      Icon(Icons.close, size: 20, color: Colors.red,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.close, size: 12, color: defaultColor,),
                          Text('1',
                            style: Theme.of(context).textTheme.bodyText1.copyWith(color: defaultColor),
                          ),
                        ],
                      ),
                      Text('Hot Spanish Latte ',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text('SR 135.0',
                        style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.grey),
                      ),
                      Icon(Icons.close, size: 20, color: Colors.red,),
                    ],
                  ),
                ),
                Divider(color: Colors.grey,),
                Row(
                  children: [
                    Text('Payment',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Spacer(),
                    Image.network('https://pwstg02.blob.core.windows.net/pwfiles/ContentFiles/8468Image.jpg', width: 50, height: 40,),
                    SizedBox(width: 10,),
                    Image.network('https://pwstg02.blob.core.windows.net/pwfiles/ContentFiles/8468Image.jpg', width: 50, height: 40,),
                    SizedBox(width: 10,),
                    Image.network('https://pwstg02.blob.core.windows.net/pwfiles/ContentFiles/8468Image.jpg', width: 50, height: 40,),
                  ],
                ),
                Text('Order Details',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Order',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text('Total Order',
                      style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Dlivery Price',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text('200.00',
                      style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                buttonsMainCategory(
                  function: ()
                  {
                  //  helpNavigateTo(context, ForgetPasswordScreen());
                  },
                  height: 50,
                  colorText: Colors.white,
                  color: defaultColor,
                  fontSize: 20,
                  text: 'Order',
                )
              ],
            )
        );
      }
  );
}
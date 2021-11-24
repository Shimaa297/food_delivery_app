import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/help/help.dart';
import 'package:food_delivery_app/screens/details/about_restaurant.dart';

class ProviderApp extends ChangeNotifier{
int currentIndex = 0;
int myCount = 0;
List<Widget> listViewContent = [
  ListView.separated(
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
          Row(
            children: [
              CachedNetworkImage(
                placeholder: (BuildContext context, index)=> Center(child: CircularProgressIndicator()),
                imageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/2339px-McDonald%27s_Golden_Arches.svg.png',
                fit: BoxFit.contain,
                //width: size.width / 2.5,
                width: 100,
                height: 100,
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
    separatorBuilder: (context, index) => SizedBox(height: 1,),
    itemCount: 10,
  ),
];

inc()
{
  currentIndex == 0 ? listViewContent : CircularProgressIndicator();
  notifyListeners();
}
changeList(index)
{
  currentIndex = index;
}
incCount()
{
  myCount ++;
  notifyListeners();
}
decCount()
{
  myCount --;
  notifyListeners();
}
}
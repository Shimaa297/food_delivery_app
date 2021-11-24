import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


const defaultColor = Colors.green;

void helpNavigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

Widget helpContainerShadow(Widget content) => Container(
       // padding: EdgeInsets.only(top: 5, bottom: 5, right: 5),
        margin: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
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
  child:
      content,
);

Widget buttonsMainCategoryState({
  @required Function function,
  Color  color,
  String  text,
  IconData icon,
})=> Padding(
  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
  child: GestureDetector(
    onTap: function,
    child: Container(
      height: 35,
      //  width: 70,
      padding: EdgeInsets.symmetric(horizontal: 20),
      // margin: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color:  color,
        border: Border.all(color: defaultColor),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 3.0,
          ),
        ],
      ),
      child: Row(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: Colors.grey[300],),
          SizedBox(width: 5,),
          Text(
            text,
            // style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 12),
          ),
        ],
      ),
    ),
  ),
);

Widget buttonsMainCategory({
  @required Function function,
  Color  color,
  Color colorText = Colors.black,
  String  text,
  IconData icon,
  double height = 35,
  double fontSize = 16,
})=> Padding(
  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
  child: GestureDetector(
    onTap: function,
    child: Container(
      height: height,
      //  width: 70,
      padding: EdgeInsets.symmetric(horizontal: 10,),
      // margin: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color:  color,
        border: Border.all(color: defaultColor),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 3.0,
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.cairo(
            color: colorText,
            fontWeight: FontWeight.w600,
            fontSize: fontSize,
          ),
          // style: Theme.of(context).textTheme.bodyText2.copyWith(),
        ),
      ),
    ),
  ),
);

Widget expandedSetting({
  IconData icon,
  String text,
  Function function,
}
) =>
    Column(
      children: [
        ListTile(
          onTap: function,
          leading: Icon(icon, color: Colors.grey,),
          trailing: Icon( Icons.arrow_forward_ios,
              size: 20,
              color: Colors.black,
          ),
          title: Text(
            text,
            style: GoogleFonts.cairo(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
        Divider(color: Colors.grey[400],)
      ],
    );
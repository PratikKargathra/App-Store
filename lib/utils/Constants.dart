import 'package:flutter/material.dart';
import 'package:appsstore/Sources.dart';


class BodyHeadingBack extends StatelessWidget {
   BodyHeadingBack({Key? key, required this.name}) : super(key: key);
  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20,),
      alignment: Alignment.centerLeft,
      height: 50,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name,style: appTextStyle.bodyHeadingStyle,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward)),
        ],
      ),
    );
  }
}
class AppChip extends StatelessWidget {
   AppChip({Key? key,required this.name}) : super(key: key);
  String name;
  @override
  Widget build(BuildContext context) {
    return Chip(
      shadowColor: Colors.grey,
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
      elevation: 0.5,
      backgroundColor: appColor.bgColor,
      side: BorderSide(
        color: Colors.grey.shade300,
      ),
      label: Text(
        name,
        style: const TextStyle(fontSize: 16,color: Colors.black54),
      ), //Text
    );
  }
}

class RatingBar extends StatelessWidget {
   RatingBar({Key? key, required this.name, required this.width}) : super(key: key);
  double width;
  String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(name,style: const TextStyle(fontWeight: FontWeight.bold),),
        const SizedBox(width: 15,),
        Expanded(
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(height: 12,
                decoration: BoxDecoration(
                  color: appColor.lightGrey,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(height: 10,
                width: width,
                decoration: BoxDecoration(
                  color: appColor.green,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

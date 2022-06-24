import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:appsstore/Sources.dart';


class OpenApp extends StatefulWidget {
  const OpenApp({Key? key}) : super(key: key);

  @override
  State<OpenApp> createState() => _OpenAppState();
}

class _OpenAppState extends State<OpenApp> {
  @override
  Widget build(BuildContext context) {
    dynamic arg = ModalRoute.of(context)?.settings.arguments;
    AppDetails n = arg;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon:  Icon(Icons.arrow_back,color: appColor.darkGrey,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(onPressed: (){}, icon:  Icon(Icons.search_rounded, color: appColor.darkGrey,)),
          IconButton(onPressed: (){}, icon:  Icon(Icons.more_vert_rounded, color: appColor.darkGrey,)),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 20),
              (installAppButton)?Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(n.image),
                  ),
                   SizedBox(
                    height: 80,
                    width: 80,
                    child:  CircularProgressIndicator(
                        color: appColor.green,
                    ),
                  )
                ],
              ):Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(n.image), fit: BoxFit.cover),
                ),
                height: 80,
                width: 80,
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 5,),
                  Text(
                    n.appName,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                  const SizedBox(height: 6,),
                  Text(
                    n.uploaderName,
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: appColor.green),
                  ),
                  const SizedBox(height: 6,),
                  Text(
                    "Contains ads * In-app purchases",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500 ,fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "${n.rate}⭐",
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "95K reviews",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
                Text(
                  "|",
                  style: TextStyle(fontSize: 25, color: Colors.grey.shade200),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.file_download,
                      color: Colors.black54,
                      size: 18,
                    ),
                    Text(
                      "66 MB",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
                Text(
                  "|",
                  style: TextStyle(fontSize: 25, color: Colors.grey.shade200),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      n.downloads,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Downloads",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: InkWell(
              onTap: (){
                setState(() {
                  installAppButton = !installAppButton;
                });
              },
              child: Container(
                height: 40,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: (installAppButton)?appColor.bgColor:appColor.green,
                  border: Border.all(color: (installAppButton)?appColor.green:Colors.transparent,),
                ),
                child:  Text(
                  (installAppButton)?"Cancel":"Install",
                  style: TextStyle(color: (installAppButton)?appColor.green:appColor.bgColor),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: n.sS.map((e) => Container(
                margin:  EdgeInsets.only(left: (n.sS.indexOf(e)==0)?20:10, right:(n.sS.indexOf(e)==n.sS.length-1)?20:0),
                height: 150,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: NetworkImage(e),fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),).toList(),
            ),
          ),
          const SizedBox(height: 10,),
          BodyHeadingBack(name: "About this game",),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Discover the endless desert",style: TextStyle(color: Colors.grey.shade500,fontSize: 14, fontWeight: FontWeight.w500),)),
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 20),
              AppChip(name: "Action"),
              const SizedBox(width: 10),
              AppChip(name: "Editors' choice"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 20,),
              Text("Ratings & reviews",style: appTextStyle.bodyHeadingStyle,),
              const SizedBox(width: 10,),
              Icon(Icons.error_outline_rounded,size: 15,color: appColor.darkGrey,),
              const Spacer(),
              IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward)),
            ],
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Expanded(child: Container(),flex: 2,),
                Expanded(flex:8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 5,),
                      Text(n.rate.toString(),style:  TextStyle(fontSize: 52, color:appColor.darkGrey ),)
                    ],
                  ),
                ),
                Expanded(flex: 22, child: Column(
                  children: [
                    RatingBar(name: "5", width: 180),
                    const SizedBox(height: 5,),
                    RatingBar(name: "4", width: 150),
                    const SizedBox(height: 5,),
                    RatingBar(name: "3", width: 80),
                    const SizedBox(height: 5,),
                    RatingBar(name: "2", width: 30),
                    const SizedBox(height: 5,),
                    RatingBar(name: "1", width: 20),
                  ],
                ),),
                Expanded(child: Container(),flex: 2,),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          BodyHeadingBack(name: "Similar apps",),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: recommendedForYou.map((e) => Padding(
                padding: EdgeInsets.only(left: (recommendedForYou.indexOf(e)==0)?20:10, right:(recommendedForYou.indexOf(e)==recommendedForYou.length-1)?20:0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: (){
                    Navigator.pushNamed(context, "open_app",arguments: e);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 5,),
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                          boxShadow:  [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(e.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 2,),
                      Text(e.appName),
                      const SizedBox(height: 2,),
                      Text(e.rate.toString()),
                    ],
                  ),
                ),
              )).toList(),
            ),
          ),
          BodyHeadingBack(name: "Related to this app",),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: recommendedForYou.map((e) => Padding(
                padding: EdgeInsets.only(left: (recommendedForYou.indexOf(e)==0)?20:10, right:(recommendedForYou.indexOf(e)==recommendedForYou.length-1)?20:0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: (){
                    Navigator.pushNamed(context, "open_app",arguments: e);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 5,),
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                          boxShadow:  [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(e.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 2,),
                      Text(e.appName),
                      const SizedBox(height: 2,),
                      Text(e.rate.toString()),
                    ],
                  ),
                ),
              )).toList(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 20,),
              Text("Developer contact",style: appTextStyle.bodyHeadingStyle,),
              const Spacer(),
              IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_down_rounded)),
            ],
          ),
        ],
      ),
    );
  }
}


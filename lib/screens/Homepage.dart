import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:appsstore/Sources.dart';
import 'package:flutter/rendering.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return (isIOS)? const IOSAppUI(): const AndroidAppUI();
  }
}

///
/// This Is IOS UI.
///

class IOSAppUI extends StatefulWidget {
  const IOSAppUI({Key? key}) : super(key: key);

  @override
  State<IOSAppUI> createState() => _IOSAppUIState();
}

class _IOSAppUIState extends State<IOSAppUI> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            IndexedStack(
              index: iosTabBarIndex,
              children: const [
                 TodaysPage(),
                 GamesPage(),
                 AppPageIos(),
                Center(
                  child: Text("Creating Soon"),
                ),
                Center(
                  child: Text("Creating Soon"),
                ),
              ],
            ),
            CupertinoTabBar(
                onTap: (val){
                  setState(() {

                    iosTabBarIndex = val;
                  });
                },
                currentIndex: iosTabBarIndex,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.today),
                    label: "Today",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.rocket_fill),
                    label: "Games",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.plus_app_fill),
                    label: "Apps",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.cloud_download_fill),
                    label: "Updates",
                  ), BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.search),
                    label: "search",
                  ),
                ]
            )
          ],
        ),
      backgroundColor: appColor.iosBG,
    );
  }
}
///
/// This is ios today page
///
class TodaysPage extends StatefulWidget {
  const TodaysPage({Key? key}) : super(key: key);

  @override
  State<TodaysPage> createState() => _TodaysPageState();
}

class _TodaysPageState extends State<TodaysPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: [
        SizedBox(height: MediaQuery.of(context).size.height*0.1,),
        Text("${weekNameList[appDate.weekday-1]}, ${monthNameList[appDate.month-1]} ${appDate.day}", style: TextStyle(color: appColor.iosHeading, fontWeight: FontWeight.w500, fontSize: 15),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const Text("Today", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            GestureDetector(
              onTap: (){
                setState(() {
                  isIOS = false;
                });
              },
              child: const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage("https://media.istockphoto.com/photos/millennial-male-team-leader-organize-virtual-workshop-with-employees-picture-id1300972574?b=1&k=20&m=1300972574&s=170667a&w=0&h=2nBGC7tr0kWIU8zRQ3dMg-C5JLo9H2sNUuDjQ5mlYfo="),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20,),
        Column(
          children: iOSList.map((e) => GestureDetector(
            onTap: (){
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                    Text("Siriously?", style: TextStyle(fontSize: 20, color: Colors.grey.shade100, fontWeight: FontWeight.w400),),
                    const SizedBox(height: 10,),
                    const Text("This Game Is The Beast", style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.w500),),
                    const Spacer(),
                    const Text("This is a dummy text and also this app has creted for exam purpose.", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),),

                ],
              ),
              margin: EdgeInsets.only(bottom:(iOSList.indexOf(e) == iOSList.length-1)?80:30,),
              height: MediaQuery.of(context).size.height*0.55,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(e.img),
                  fit: BoxFit.cover,
                ),
                color: appColor.bgColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow:  [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: const Offset(0,1),
                  ),
                ],
              ),
            ),
          )).toList(),
        ),
      ],
    );
  }
}

///
/// This is a Gamepage of  Ios device
///
class GamesPage extends StatefulWidget {
  const GamesPage({Key? key}) : super(key: key);

  @override
  State<GamesPage> createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 0),
      children: [
        SizedBox(height: MediaQuery.of(context).size.height*0.12,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              const Text("Games", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              GestureDetector(
                onTap: (){
                  setState(() {
                    isIOS = false;
                  });
                },
                child: const CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage("https://media.istockphoto.com/photos/millennial-male-team-leader-organize-virtual-workshop-with-employees-picture-id1300972574?b=1&k=20&m=1300972574&s=170667a&w=0&h=2nBGC7tr0kWIU8zRQ3dMg-C5JLo9H2sNUuDjQ5mlYfo="),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Divider(
          height: 0,
          color: Colors.grey.shade200,
          endIndent: 20,
          indent: 20,
          thickness: 2,
        ),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
          child: Row(
            children: iOSList.map((e) => Padding(
              padding: EdgeInsets.only(left:(iOSList.indexOf(e) == 0)?20:10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),
                  const Text("NEW GAME",style: TextStyle(color: Colors.blue, fontSize: 12 , fontWeight: FontWeight.w500),),
                  const SizedBox(height: 2,),
                  Text(e.name,style: const TextStyle(color: Colors.black, fontSize: 22 , fontWeight: FontWeight.w500),),
                  Text(e.subName,style: const TextStyle(color: Colors.grey, fontSize: 22 , fontWeight: FontWeight.w400),),
                  const SizedBox(height: 5,),
                  Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    height: MediaQuery.of(context).size.height*0.3,
                    width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: NetworkImage(e.img),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                ],
              ),
            )).toList(),
          ),
        ),
        Divider(
          height: 0,
          color: Colors.grey.shade200,
          endIndent: 20,
          indent: 20,
          thickness: 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Discover AR Games", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),),
              CupertinoButton(child: const Text("See All",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,  )), onPressed: (){}, padding: const EdgeInsets.only(left: 20),),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: recommendedForYou.map((e) => Container(
              width: MediaQuery.of(context).size.width*0.9,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left:(recommendedForYou.indexOf(e) == 0)?20:0),
                        height: MediaQuery.of(context).size.width*0.26,
                        width: MediaQuery.of(context).size.width*0.26,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(e.image,),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(e.appName, style: const TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),),
                          const SizedBox(height: 2,),
                          Text(e.uploaderName,style: TextStyle(color: Colors.grey.shade700),),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: const Color(0xfff0f0f8),
                                  borderRadius: BorderRadius.circular(50),

                                ),
                                child: const Text("GET", style: TextStyle(color:Colors.blue,fontWeight: FontWeight.w500, ),),
                              ),
                              const SizedBox(width: 10,),
                              Text("In App \nPrurchasses", style: TextStyle(color: Colors.grey.shade700, fontSize: 12),)
                            ],
                          )

                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Divider(
                    height: 0,
                    color: Colors.grey.shade200,
                    endIndent: 20,
                    indent: 120,
                    thickness: 2,
                  ),
                ],
              ),
            )).toList(),
          ),
        ),
        const SizedBox(height: 10,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: recommendedForYou.map((e) => Container(
              width: MediaQuery.of(context).size.width*0.9,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left:(recommendedForYou.indexOf(e) == 0)?20:0),
                        height: MediaQuery.of(context).size.width*0.26,
                        width: MediaQuery.of(context).size.width*0.26,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(e.image,),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(e.appName, style: const TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),),
                          const SizedBox(height: 2,),
                          Text(e.uploaderName, style: TextStyle(color: Colors.grey.shade700), ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: const Color(0xfff0f0f8),
                                  borderRadius: BorderRadius.circular(50),

                                ),
                                child: const Text("GET", style: TextStyle(color:Colors.blue,fontWeight: FontWeight.w500, ),),
                              ),
                              const SizedBox(width: 10,),
                              Text("In App \nPrurchasses", style: TextStyle(color: Colors.grey.shade700, fontSize: 12),)
                            ],
                          )

                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Divider(
                    height: 0,
                    color: Colors.grey.shade200,
                    endIndent: 20,
                    indent: 120,
                    thickness: 2,
                  ),
                ],
              ),
            )).toList(),
          ),
        ),
      ],
    );
  }
}

///
///  This is a app page of ios Device.
///

class AppPageIos extends StatefulWidget {
  const AppPageIos({Key? key}) : super(key: key);

  @override
  State<AppPageIos> createState() => _AppPageIosState();
}

class _AppPageIosState extends State<AppPageIos> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 0),
      children: [
        SizedBox(height: MediaQuery.of(context).size.height*0.12,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              const Text("Apps", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              GestureDetector(
                onTap: (){
                  setState(() {
                    isIOS = false;
                  });
                },
                child: const CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage("https://media.istockphoto.com/photos/millennial-male-team-leader-organize-virtual-workshop-with-employees-picture-id1300972574?b=1&k=20&m=1300972574&s=170667a&w=0&h=2nBGC7tr0kWIU8zRQ3dMg-C5JLo9H2sNUuDjQ5mlYfo="),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Divider(
          height: 0,
          color: Colors.grey.shade200,
          endIndent: 20,
          indent: 20,
          thickness: 2,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: iOSList.map((e) => Padding(
              padding: EdgeInsets.only(left:(iOSList.indexOf(e) == 0)?20:10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),
                  const Text("NOW WITH SIRI",style: TextStyle(color: Colors.blue, fontSize: 12 , fontWeight: FontWeight.w500),),
                  const SizedBox(height: 2,),
                  Text(e.name,style: const TextStyle(color: Colors.black, fontSize: 22 , fontWeight: FontWeight.w500),),
                  Text(e.subName,style: const TextStyle(color: Colors.grey, fontSize: 22 , fontWeight: FontWeight.w400),),
                  const SizedBox(height: 5,),
                  Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    height: MediaQuery.of(context).size.height*0.3,
                    width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: NetworkImage(e.img),
                          fit: BoxFit.cover,
                        )
                    ),
                  )
                ],
              ),
            )).toList(),
          ),
        ),
        Divider(
          height: 0,
          color: Colors.grey.shade200,
          endIndent: 20,
          indent: 20,
          thickness: 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("12 Great Apps For IOS", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),),
              CupertinoButton(child: const Text("See All",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,  )), onPressed: (){}, padding: const EdgeInsets.only(left: 20),),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: recommendedForYou.map((e) => Container(
              width: MediaQuery.of(context).size.width*0.9,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left:(recommendedForYou.indexOf(e) == 0)?20:0),
                        height: MediaQuery.of(context).size.width*0.18,
                        width: MediaQuery.of(context).size.width*0.18,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(e.image,),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(e.appName, style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),
                          const SizedBox(height: 10,),
                          Text(e.uploaderName, style: TextStyle(color: Colors.grey.shade700, fontSize: 16, ), ),

                        ],
                      ),
                      const Spacer(),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          color: const Color(0xfff0f0f8),
                          borderRadius: BorderRadius.circular(50),

                        ),
                        child: const Text("GET", style: TextStyle(color:Colors.blue,fontWeight: FontWeight.w500, ),),
                      ),
                      const SizedBox(width: 10,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Divider(
                    height: 0,
                    color: Colors.grey.shade200,
                    endIndent: 20,
                    indent: 120,
                    thickness: 2,
                  ),
                ],
              ),
            )).toList(),
          ),
        ),
        const SizedBox(height: 5,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: recommendedForYou.map((e) => Container(
              width: MediaQuery.of(context).size.width*0.9,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left:(recommendedForYou.indexOf(e) == 0)?20:0),
                        height: MediaQuery.of(context).size.width*0.18,
                        width: MediaQuery.of(context).size.width*0.18,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(e.image,),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(e.appName, style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),
                          const SizedBox(height: 10,),
                          Text(e.uploaderName, style: TextStyle(color: Colors.grey.shade700, fontSize: 16, ), ),

                        ],
                      ),
                      const Spacer(),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          color: const Color(0xfff0f0f8),
                          borderRadius: BorderRadius.circular(50),

                        ),
                        child: const Text("GET", style: TextStyle(color:Colors.blue,fontWeight: FontWeight.w500, ),),
                      ),
                      const SizedBox(width: 10,),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Divider(
                    height: 0,
                    color: Colors.grey.shade200,
                    endIndent: 20,
                    indent: 120,
                    thickness: 2,
                  ),
                ],
              ),
            )).toList(),
          ),
        ),
        const SizedBox(height: 10,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: recommendedForYou.map((e) => Container(
              width: MediaQuery.of(context).size.width*0.9,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left:(recommendedForYou.indexOf(e) == 0)?20:0),
                        height: MediaQuery.of(context).size.width*0.18,
                        width: MediaQuery.of(context).size.width*0.18,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(e.image,),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(e.appName, style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),
                          const SizedBox(height: 10,),
                          Text(e.uploaderName, style: TextStyle(color: Colors.grey.shade700, fontSize: 16, ), ),

                        ],
                      ),
                      const Spacer(),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          color: const Color(0xfff0f0f8),
                          borderRadius: BorderRadius.circular(50),

                        ),
                        child: const Text("GET", style: TextStyle(color:Colors.blue,fontWeight: FontWeight.w500, ),),
                      ),
                      const SizedBox(width: 10,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Divider(
                    height: 0,
                    color: Colors.grey.shade200,
                    endIndent: 20,
                    indent: 120,
                    thickness: 2,
                  ),
                ],
              ),
            )).toList(),
          ),
        ),
      ],
    );
  }
}

///
/// This Is Android UI.
///

class AndroidAppUI extends StatefulWidget {
  const AndroidAppUI({Key? key}) : super(key: key);

  @override
  State<AndroidAppUI> createState() => _AndroidAppUIState();
}

class _AndroidAppUIState extends State<AndroidAppUI> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: Container(
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon:  Icon(Icons.menu_rounded,color: appColor.black,)),
                Expanded(
                  child:  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search for apps & games",
                      hintStyle: appTextStyle.hintStyle,
                    ),
                  ),
                ),
                IconButton(onPressed: (){
                  setState(() {
                    isIOS = !isIOS;
                  });
                }, icon:  Icon(Icons.mic_none_rounded, color: appColor.black,)),
              ],
            ),
            height: 45,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: appColor.bgColor,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: const Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
          ),
          bottom:  TabBar(
            indicatorWeight: 3,

            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: appColor.green,
             unselectedLabelColor: appColor.darkGrey,
             labelColor: appColor.green,
             isScrollable: true,
            tabs: const [
              Tab(text: "For you"),
              Tab(text: "Top Charts"),
              Tab(text: "Categories"),
              Tab(text: "Editor's Choice"),
              Tab(text: "Premium")
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ForYouPage(),
            TopChart(),
            ForYouPage(),
            TopChart(),
            TopChart(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (val){
            setState(() {
            bottomNavBarIndex = val;
            });
          },


          currentIndex: bottomNavBarIndex,
          fixedColor: appColor.green,
          type: BottomNavigationBarType.fixed,
          items: const [
             BottomNavigationBarItem(
              icon: Icon(Icons.videogame_asset_outlined),
              label: "Games",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.apps),
                label: "Apps"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_movies_outlined),
                label: "Movies & TV"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.book_outlined),
                label: "Books"
            ),
          ],
        ),
      ),
    );
  }
}

///
/// This is First Tab of Home Screen TabBar.
///
class ForYouPage extends StatelessWidget {
  const ForYouPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => (index == forYouLists.length-1)?const SizedBox(height: 20,):BodyHeadingBack(name: forYouLists[index].name,),
        separatorBuilder: (context, index) => SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: forYouLists[index].listOfApp.map((e) => Padding(
              padding: EdgeInsets.only(left: (forYouLists[index].listOfApp.indexOf(e)==0)?20:10, right:(forYouLists[index].listOfApp.indexOf(e)==forYouLists[index].listOfApp.length-1)?20:0),
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
                    Text(e.appName, overflow: TextOverflow.ellipsis),
                    const SizedBox(height: 2,),
                    Text(e.rate.toString()),
                  ],
                ),
              ),
            )).toList(),
          ),
        ),
        itemCount: forYouLists.length,
    );
  }
}

///
/// This is a Second Tab of tabbar.
///

class TopChart extends StatefulWidget {
  const TopChart({Key? key}) : super(key: key);

  @override
  State<TopChart> createState() => _TopChartState();
}

class _TopChartState extends State<TopChart> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            const SizedBox(width: 20,),
            const Text("Show installed apps"),
            const Spacer(),
            Switch(
                value: showInstalledApp,
                onChanged: (val){
                  setState(() {
                    showInstalledApp = val;
                  });
                }

            ),
            const SizedBox(width: 20,),
          ],
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: topChartClips.map((e) => Padding(
              padding: EdgeInsets.only(left: (topChartClips.indexOf(e)==0)?20:10),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    topChartPageClips = topChartClips.indexOf(e);
                  });
                },
                child: Chip(
                  shadowColor: Colors.grey,
                  padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                  elevation: 0.5,
                  backgroundColor: (topChartPageClips == topChartClips.indexOf(e))?appColor.selectedClip:appColor.bgColor,
                  side: BorderSide(
                    color: Colors.grey.shade300,
                  ),
                  label: Text(
                    e,
                    style: const TextStyle(fontSize: 16,color: Colors.black54),
                  ), //Text
                ),
              ),
            )).toList(),
          ),
        ),
        Column(
          children: recommendedForYou.map((e) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, "open_app", arguments: e);
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 20),
                  Text("${recommendedForYou.indexOf(e)+1}",style:  TextStyle(fontSize: 12, color: Colors.grey.shade500),),
                  const SizedBox(width: 20,),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow:  [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(e.image), fit: BoxFit.cover),
                    ),
                    height: 65,
                    width: 65,
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(height: 2,),
                      Text(
                        e.appName,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                      const SizedBox(height: 5,),
                      Text(
                        e.uploaderName,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: appColor.green),
                      ),
                      const SizedBox(height: 5,),
                      Text(
                        "${e.rate} ⭐",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade500 ,fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )).toList(),
        ),
      ],
    );
  }
}




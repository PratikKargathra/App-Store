import 'package:appsstore/Sources.dart';

///
/// Homepage Screen Sections List
///
List<PageBox> forYouLists =<PageBox>[
  PageBox(name: "Recommended for you", listOfApp: recommendedForYou),
  PageBox(name: "New & updated apps", listOfApp: recommendedForYou),
  PageBox(name: "Suggest for you", listOfApp: recommendedForYou),
  PageBox(name: "More apps", listOfApp: recommendedForYou),
  PageBox(name: "", listOfApp: recommendedForYou)
];

///
/// Homepage Apps List
///
List<AppDetails> recommendedForYou = <AppDetails>[
  AppDetails(
    image: "https://9to5mac.com/wp-content/uploads/sites/6/2021/07/altos-adventure-lost-city-apple-arcade.jpg?quality=82&strip=all",
    appName: "Alto's Odyssey",
    uploaderName: "NoodleCake Studio Inc",
    rate: 4.5,
    downloads: "5M+",
    aboutThisApp: "Discover the endless desert",
    sS: more_photos,
  ),
  AppDetails(
    image: "https://www.businessinsider.in/thumb.cms?msid=87804839&width=1200&height=900",
    appName: "Canva",
    uploaderName: "Canva Ink",
    rate: 4.0,
    downloads: "500K+",
    aboutThisApp: "Canva is used in graphic Design",
    sS: more_photos,
  ),
  AppDetails(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmQbWMyMcuM-_-aGFNSTOTuVkDwd829m_iCA&usqp=CAU",
    appName: "Telegram",
    uploaderName: "Telegram Ink",
    rate: 3.8,
    downloads: "1B+",
    aboutThisApp: "This is a sharing and chatting app.",
    sS: more_photos,
  ),
  AppDetails(
    image: "https://clipart.info/images/ccovers/1590430658youtube-logo-png-white-background-app-icon.png",
    appName: "Youtube",
    uploaderName: "Google Ink",
    rate: 4.2,
    downloads: "1B+",
    aboutThisApp: "Youtube is a online video sharing platform",
    sS: more_photos,
  ),
  AppDetails(
    image: "https://staffordonline.org/wp-content/uploads/2019/01/Google.jpg",
    appName: "Google",
    uploaderName: "Google Ink",
    rate: 5.0,
    downloads: "7B+",
    aboutThisApp: "Google is a browser and network platform",
    sS: more_photos,
  ),
  AppDetails(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC7VYuJc4TnMMoRhhFa9SjvOtSVTpCwESYog&usqp=CAU",
    appName: "Classroom",
    uploaderName: "Google Ink",
    rate: 2.0,
    downloads: "10M+",
    aboutThisApp: "Classroom is give class functionality",
    sS: more_photos,
  ),
  AppDetails(
    image: "https://play-lh.googleusercontent.com/JRd05pyBH41qjgsJuWduRJpDeZG0Hnb0yjf2nWqO7VaGKL10-G5UIygxED-WNOc3pg",
    appName: "BGMI India",
    uploaderName: "Pubg India",
    rate: 1.0,
    downloads: "100M+",
    aboutThisApp: "This is a Fighting game",
    sS: more_photos,
  ),
  AppDetails(
    image: "https://seeklogo.com/images/I/instagram-logo-041EABACE1-seeklogo.com.png",
    appName: "Instagram",
    uploaderName: "Facebook Ink",
    rate: 2.0,
    downloads: "10M+",
    aboutThisApp: "This is a Social Media App.",
    sS: more_photos,
  ),
];



///
/// Homepage App Image Lists
///


List<String> more_photos = <String>[
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCD20rko_Kj0iP6Pll72F_KJsZYqgVOhoV6w&usqp=CAU",
    "https://i.insider.com/54e612b56da8116a4899a7eb?width=1000&format=jpeg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpctozTEtq71fwBkUq8SUY89YG_NL5AlAgXQ&usqp=CAU",
    "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/pd44-660-ae-02.jpg?w=1200&h=1200&dpr=1&fit=clip&crop=default&fm=jpg&q=75&vib=3&con=3&usm=15&cs=srgb&bg=F4F4F3&ixlib=js-2.2.1&s=ade025778c840b5423cb3f30fbcf895d",
];

///
/// Homepage clips
///
List<String> topChartClips = <String>[
  "Top Free",
  "Top Grossing",
  "Trending",
  "Top paid",
  "For You",
];

//DAY FINDER LIST
List<String> weekNameList = <String>[
  "MONDAY",
  "TUESDAY",
  "WEDNESDAY",
  "THURSDAY",
  "FRIDAY",
  "SATURDAY",
  "SUNDAY",
];
List<String> monthNameList = <String>[
  "JANUARY",
  "FEBRUARY",
  "MARCH",
  "APRIL",
  "MAY",
  "JUNE",
  "JULY",
  "AUGUST",
  "SEPTEMBER",
  "OCTOBER",
  "NOVEMBER",
  "DECEMBER",
];


List <IosListClass> iOSList = <IosListClass>[
  IosListClass(name: "Attack", subName: "Bizarre Sports Games", img: "https://1.bp.blogspot.com/-Uyn2MWqiO4c/XpY561exv6I/AAAAAAAAXIA/DISIukaYCyMHujGvjUNRNhYgayZzoeLBwCLcBGAsYHQ/s1600/3654915-little-hope-1.jpg", description: "Compete in thrilling battles"),
  IosListClass(name: "Test Drive", subName: "Bizarre Sports Games", img: "https://cdn.quotesgram.com/img/86/71/481995907-8744-the-darkness-ii-1366x768-game-wallpaper.jpg", description: "Compete in thrilling battles"),
  IosListClass(name: "Hero Stone", subName: "Bizarre Sports Games", img: "https://www.trustedreviews.com/wp-content/uploads/sites/54/2018/09/hearthstone-hereos-of-warcraft.jpg", description: "Compete in thrilling battles"),
  IosListClass(name: "Pokemon Go", subName: "Bizarre Sports Games", img: "https://cdn1.dotesports.com/wp-content/uploads/2021/12/15115420/16318794739932.jpg", description: "Compete in thrilling battles"),
  IosListClass(name: "Train Crisis", subName: "Bizarre Sports Games", img: "https://thetechjournal.com/wp-content/uploads/images/1204/1333280469-train-crisis-hd-4.jpg", description: "Compete in thrilling battles"),
  IosListClass(name: "Subway Princess", subName: "Bizarre Sports Games", img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbuDeMOs39QprCMc6fR9si7e9Vzm4_DVIbGqtugr1IGRSX-XaMbXpsfcKNByDd1HB2vFg&usqp=CAU", description: "Compete in thrilling battles"),
];
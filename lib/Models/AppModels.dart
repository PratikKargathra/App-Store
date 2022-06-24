class AppDetails{
  String image;
  String appName;
  String uploaderName;
  double rate;
  String downloads;
  String aboutThisApp;
  List<String> sS;
  AppDetails({
    required this.image,
    required this.appName,
    required this.uploaderName,
    required this.rate,
    required this.downloads,
    required this.aboutThisApp,
    required this.sS,
});
}

class PageBox{
  String name;
  List listOfApp;

  PageBox({
    required this.name,
    required this.listOfApp,
});

}

class IosListClass
{
  String name;
  String subName;
  String img;
  String description;

  IosListClass({
    required this.name,
    required this.subName,
    required this.img,
    required this.description,
  });
}

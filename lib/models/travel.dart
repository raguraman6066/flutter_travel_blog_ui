// ignore_for_file: public_member_api_docs, sort_constructors_first
class Travel {
  String name;
  String location;
  String url;
  Travel({
    required this.name,
    required this.location,
    required this.url,
  });

//method return list of travel objects
  static List<Travel> generateTravelBlog() {
    return [
      Travel(name: "place1", location: "place1", url: "assets/images/top1.jpg"),
      Travel(name: "place2", location: "place2", url: "assets/images/top2.jpg"),
      Travel(name: "place3", location: "place3", url: "assets/images/top3.jpg"),
      Travel(name: "place4", location: "place4", url: "assets/images/top4.jpg"),
    ];
  }

  static List<Travel> generateMostPopular() {
    return [
      Travel(
          name: "place5",
          location: "place11",
          url: "assets/images/bottom1.jpg"),
      Travel(
          name: "place6",
          location: "place12",
          url: "assets/images/bottom2.jpg"),
      Travel(
          name: "place7",
          location: "place13",
          url: "assets/images/bottom3.jpg"),
      Travel(
          name: "place8",
          location: "place14",
          url: "assets/images/bottom4.jpg"),
    ];
  }
}

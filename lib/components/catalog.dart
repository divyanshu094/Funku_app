class CatalogModel {
  static final items = [
    Item(
        name: "Whiskey Samba is having an event this friday",
        desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        time: "1h ago"
    )
  ];
}

class Item {
  final String name;
  final String desc;
  final String time;

  Item({ required this.name, required this.desc, required this.time});
}
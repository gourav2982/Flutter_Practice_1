class Item {
  final String id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item(
      this.id, this.name, this.description, this.price, this.color, this.image);
}

final product = [
  Item("gk1", "Iphone 12", "Buy it", 100000, "#0000FF",
      "https://www.cnet.com/a/img/resize/c0fa4687157796aac3e674f031a6bfcd759c211f/hub/2020/10/23/0dde9b80-a09d-430a-b493-5337ca1d6f2d/p1002406.jpg?auto=webp&fit=crop&height=675&width=1200")
];

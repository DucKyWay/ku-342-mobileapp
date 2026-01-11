class MenuItem {
  final String name;
  final double price;
  final String image;
  final String description;

  const MenuItem({
    required this.name,
    required this.price,
    required this.image,
    required this.description,
  });
}

const List<MenuItem> menuItems = [
  MenuItem(name: "Steak", price: 200, image: "steak.webp", description: "test"),
  MenuItem(
    name: "Cooked Porkchop",
    price: 150,
    image: "cooked_porkchop.webp",
    description: "test",
  ),
  MenuItem(
    name: "Mushroom Stew",
    price: 100,
    image: "mushroom_stew.webp",
    description: "test",
  ),
  MenuItem(
    name: "Rabbit Stew",
    price: 120,
    image: "rabbit_stew.webp",
    description: "test",
  ),
  MenuItem(name: "Cake", price: 170, image: "cake.png", description: "test"),
  MenuItem(
    name: "Cookie",
    price: 20,
    image: "cookie.webp",
    description: "test",
  ),
  MenuItem(
    name: "Pumpkin Pie",
    price: 80,
    image: "pumpkin_pie.webp",
    description: "test",
  ),
  MenuItem(
    name: "Baked Potato",
    price: 40,
    image: "baked_potato.webp",
    description: "test",
  ),
  MenuItem(name: "Bread", price: 15, image: "bread.webp", description: "test"),
  MenuItem(name: "Apple", price: 10, image: "apple.webp", description: "test"),
];

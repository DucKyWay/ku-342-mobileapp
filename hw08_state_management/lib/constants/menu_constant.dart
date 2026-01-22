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
  MenuItem(
    name: "Steak",
    price: 200,
    image: "steak.webp",
    description: "เนื้อวัวปรุงสุก สด ใหม่ รสชาติอร่อย พึ่งเชือดเมื่อเช้า",
  ),
  MenuItem(
    name: "Cooked Porkchop",
    price: 150,
    image: "cooked_porkchop.webp",
    description: "พอร์คช็อปปรุงสุก สด ใหม่ รสชาติอร่อย พึ่งเชือดเมื่อเช้า",
  ),
  MenuItem(
    name: "Mushroom Stew",
    price: 100,
    image: "mushroom_stew.webp",
    description: "ซุปเห็ดร้อน ๆ สด ใหม่ รสชาติอร่อย พึ่งถอนเมื่อเช้า",
  ),
  MenuItem(
    name: "Rabbit Stew",
    price: 120,
    image: "rabbit_stew.webp",
    description: "ซุปกระต่ายร้อน ๆ สด ใหม่ รสชาติอร่อย พึ่งเชือดเมื่อเช้า",
  ),
  MenuItem(
    name: "Cake",
    price: 170,
    image: "cake.png",
    description: "เค้ก สด ใหม่ รสชาติอร่อย พึ่งเก็บนมวัวมาเมื่อเช้า",
  ),
  MenuItem(
    name: "Cookie",
    price: 20,
    image: "cookie.webp",
    description: "คุกกี้ สด ใหม่ รสชาติอร่อย พึ่งเก็บนมวัวมาเมื่อเช้า",
  ),
  MenuItem(
    name: "Pumpkin Pie",
    price: 80,
    image: "pumpkin_pie.webp",
    description: "พายฟักทอง สด ใหม่ รสชาติอร่อย พึ่งเก็บมาเมื่อเช้า",
  ),
  MenuItem(
    name: "Baked Potato",
    price: 40,
    image: "baked_potato.webp",
    description: "มันฝรั่งอบ ไม่มีอะไร แต่อร่อย",
  ),
  MenuItem(
    name: "Bread",
    price: 15,
    image: "bread.webp",
    description: "ขนมปัง สด ใหม่ รสชาติอร่อย พึ่งเก็บนมวัวมาเมื่อเช้า",
  ),
  MenuItem(
    name: "Apple",
    price: 10,
    image: "apple.webp",
    description: "แอปเปิ้ล สด ใหม่ รสชาติอร่อย พึ่งเก็บนมวัวมาเมื่อเช้า",
  ),
];

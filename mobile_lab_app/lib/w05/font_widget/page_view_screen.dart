import 'package:flutter/material.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
      appBar: AppBar(title: const Text('PageViewExample')),
      body: PageView(
        controller: controller,
        children: const <Widget>[Page1(), Page2(), Page3()],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text(
          'Page 1',
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Center(
        child: Text(
          'Page 2',
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Page 3',
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
      ),
    );
  }
}

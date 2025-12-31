import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/w05_widget_tree/beach.jpg'),
          Transform.translate(
            offset: const Offset(0, 100),
            child: Column(
              children: const [
                ProfileImage(),
                ProfileDetails(),
                ProfileActions(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        width: 200,
        height: 200,
        'assets/images/w05_widget_tree/dog.jpg',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Wolfarm Barkovich',
            style: GoogleFonts.kanit(
              textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            children: [
              Icon(Icons.star, size: 40, color: Colors.yellow.shade600),
              Icon(Icons.star, size: 40, color: Colors.yellow.shade600),
              Icon(Icons.star, size: 40, color: Colors.yellow.shade600),
              Icon(Icons.star, size: 40, color: Colors.yellow.shade600),
              Icon(Icons.star, size: 40, color: Colors.yellow.shade600),
            ],
          ),

          _buildDetailsRow('Age', '4'),
          _buildDetailsRow('Status', 'Good Boy'),
        ],
      ),
    );
  }
}

Widget _buildDetailsRow(String heading, String value) {
  return Row(
    children: [
      Text('$heading: ', style: const TextStyle(fontWeight: FontWeight.bold)),
      Text(value),
    ],
  );
}

class ProfileActions extends StatelessWidget {
  const ProfileActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildIcon(Icons.restaurant, "Feed"),
        _buildIcon(Icons.favorite, 'Pet'),
        _buildIcon(Icons.directions, "Walk"),
      ],
    );
  }
}

Widget _buildIcon(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Column(children: <Widget>[Icon(icon, size: 40), Text(text)]),
  );
}

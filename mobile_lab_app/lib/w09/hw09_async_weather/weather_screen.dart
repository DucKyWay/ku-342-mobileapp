import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'weather_model.dart';

const String weatherApiKey = "SECRET";

Future<Weather> fetchData(String city) async {
  final response = await http.get(
    Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?q=$city&units=metric&appid=$weatherApiKey",
    ),
  );

  if (response.statusCode == 200) {
    return Weather.fromJson(json.decode(response.body));
  } else {
    throw Exception("Failed to fetch data: ${response.statusCode}");
  }
}

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final TextEditingController _controller = TextEditingController();
  Weather? weather;
  bool loading = false;

  void getWeather() async {
    setState(() {
      loading = true;
    });
    try {
      final result = await fetchData(_controller.text);
      setState(() {
        weather = result;
        loading = false;
      });
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("City not found")));
      setState(() {
        loading = false;
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Weather Report"))),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: "Enter city",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            FilledButton(onPressed: getWeather, child: const Text("OK")),
            const SizedBox(height: 24),
            if (loading) CircularProgressIndicator(),
            if (weather != null && !loading)
              Column(
                spacing: 8,
                children: [
                  Text(weather!.city, style: TextStyle(fontSize: 36)),
                  Text("${weather!.temp} °C", style: TextStyle(fontSize: 24)),
                  Text(weather!.weather, style: TextStyle(fontSize: 16)),
                  Image.network("https://openweathermap.org/img/wn/${weather!.icon}@2x.png")
                ],
              ),
          ],
        ),
      ),
    );
  }
}

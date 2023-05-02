import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'model.dart';
import 'AdditionalInformation.dart';
import 'CurrentWeather.dart';
import 'package:lottie/lottie.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Weather? weather;
  String apikey = 'edd1028fb93136802c02418f496d9b19';
  TextEditingController cityController = TextEditingController(); // Controller for the city input field

  Future<void> fetchData(String city) async {
    try {
      // Make API request using Dio
      Response response = await Dio().get(
          'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apikey&units=metric');
      // Extract data from response
      setState(() {
        weather = Weather.fromJson(response.data);
      });
    } catch (error) {
      print('Error fetching data: $error');
      throw error;
    }
  }

  @override
  void initState() {
    fetchData('Cairo');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFf9f9f9),
        appBar: AppBar(
          backgroundColor: Color(0xFFf9f9f9),
          elevation: 0,
          title: Text(
            'Weather App',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.network(
                'https://assets2.lottiefiles.com/packages/lf20_sHPrbL4o3f.json',
                width: 250,
                height: 250,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 30,
              ),
              weather == null
                  ? CircularProgressIndicator()
                  : currentweather('${weather?.temp}', '${weather?.cityName}'),
              weather == null ? Container() : AdditionalInformation('${weather?.windSpeed}', '${weather?.humidity}', '${weather?.pressure}', '${weather?.feelsLike}'),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: cityController,
                decoration: InputDecoration(
                  labelText: '''                               Enter City Name 
                         the first letter is capital 😊☁️''',
                ),
                onFieldSubmitted: (value) {
                  fetchData(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

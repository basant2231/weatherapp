import 'package:flutter/material.dart';

TextStyle titleFont = TextStyle(fontWeight: FontWeight.w600, fontSize: 20);
TextStyle infoFont = TextStyle(fontWeight: FontWeight.w400, fontSize: 20);
Widget AdditionalInformation(
    String wind, String humidity, String pressure, String feelslike) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(18),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wind',
                  style: titleFont,
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Humidity',
                  style: titleFont,
                ),
              ],
            ),
            SizedBox(width: 14), // Add spacing between wind and humidity
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  wind,
                  style: infoFont,
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  humidity,
                  style: infoFont,
                ),
              ],
            ),
            SizedBox(width: 15,),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Pressure',
                  style: titleFont,
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'FeelsLike',
                  style: titleFont,
                ),
              ],
            ),
            SizedBox(width: 14), // Add spacing between pressure and feelslike
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  pressure,
                  style: infoFont,
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  feelslike,
                  style: infoFont,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 24, // Add spacing between first and second row
        ),
      ],
    ),
  );
}

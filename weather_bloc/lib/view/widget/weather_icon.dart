import 'package:flutter/material.dart';
import 'package:weather_bloc/constant/constant.dart';

class WeatherIcon extends StatelessWidget {
  final String image;
  const WeatherIcon(this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
      placeholder: 'assets/images/loading.gif',
      image: 'https://${kIconHost}/img/wn/$image@4x.png',
      width: 96,
      height: 96,
    );
  }
}

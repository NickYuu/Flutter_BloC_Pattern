import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_v1_tutorial/data/weather_repository.dart';
import './bloc.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository repository;
  WeatherBloc(this.repository);

  @override
  WeatherState get initialState => WeatherInitial();

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    // TODO: Add Logic
    yield WeatherLoading();

    if (event is GetWeather) {

      try {
        final weather = await repository.fetchWeather(event.cityName);
        yield WeatherLoaded(weather);
      } on NetworkError {
        yield WeatherError("無法獲取資料，請確認設備是否連上網路");
      }

    } else if (event is GetDetailedWeather) {

      try {
        final weather = await repository.fetchDetailedWeather(event.cityName);
        yield WeatherLoaded(weather);
      } on NetworkError {
        yield WeatherError("無法獲取資料，請確認設備是否連上網路");
      }

    }
  }
}

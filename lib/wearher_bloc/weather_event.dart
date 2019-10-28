import 'package:equatable/equatable.dart';

/**
 * 定義 `EVENT` 需要思考 有哪些 use cases
 */

/// WeatherEvent
abstract class WeatherEvent extends Equatable {
  const WeatherEvent();
}

// 以城市獲取主頁天氣
class GetWeather extends WeatherEvent {
  final String cityName;

  const GetWeather(this.cityName);

  @override
  // TODO: implement props
  List<Object> get props => [
    cityName
  ];
}

// 以城市獲取詳細頁天氣
class GetDetailedWeather extends WeatherEvent {
  final String cityName;

  const GetDetailedWeather(this.cityName);

  @override
  // TODO: implement props
  List<Object> get props => [
    cityName
  ];
}
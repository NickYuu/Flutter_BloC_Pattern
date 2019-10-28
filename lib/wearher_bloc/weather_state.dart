import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_v1_tutorial/data/model/weather.dart';

/**
 * 定義 `STATE` 需要思考 UI可以顯示多少種不同狀態
 */

/// WeatherState
abstract class WeatherState extends Equatable {
  const WeatherState();
}

// 初始狀態
class WeatherInitial extends WeatherState {
  @override
  List<Object> get props => [];
}

// 加載中顯示 loading indicator
class WeatherLoading extends WeatherState {
  const WeatherLoading();
  @override
  // TODO: implement props
  List<Object> get props => [];
}

// 加載結束顯示真實畫面 weather
class WeatherLoaded extends WeatherState {
  final Weather weather;
  const WeatherLoaded(this.weather);
  @override
  // TODO: implement props
  List<Object> get props => [weather];
}

// 如果發生錯誤 給用戶提示 message
class WeatherError extends WeatherState {
  final String message;
  const WeatherError(this.message);
  @override
  // TODO: implement props
  List<Object> get props => [message];
}
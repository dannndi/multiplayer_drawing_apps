import 'package:dio/dio.dart';
import 'package:flutter_skeleton/core/httt_client/http_client.dart';
import 'package:flutter_skeleton/feature/room/repository/room_repository.dart';
import 'package:flutter_skeleton/feature/room/repository/room_repository_impl.dart';
import 'package:get_it/get_it.dart';

class MainModule {
  static const baseUrl = "http://192.168.1.6:8080/";
  static const wsUrl = "ws://192.168.1.6:8080/";
  static Future<void> init() async {
    GetIt.I.registerLazySingleton<Dio>(
      () => Dio().initClient(baseUrl),
    );

    GetIt.I.registerLazySingleton<RoomRepository>(() {
      return RoomRepositoryImpl(client: GetIt.I.get());
    });
  }
}

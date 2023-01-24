import 'package:dio/dio.dart';
import 'package:flutter_skeleton/feature/room/model/room_model.dart';
import 'package:flutter_skeleton/core/httt_client/base_response.dart';
import 'package:flutter_skeleton/feature/room/repository/room_repository.dart';

class RoomRepositoryImpl extends RoomRepository {
  final Dio client;

  RoomRepositoryImpl({required this.client});

  @override
  Future<BaseResponse<RoomModel>> createRoom() async {
    try {
      final result = await client.post("game");
      return BaseResponse.fromJson(result.data, (json) {
        return RoomModel.fromJson(json as Map<String, dynamic>);
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse<List<RoomModel>>> getRooms() async {
    try {
      final result = await client.get("game");
      return BaseResponse.fromJson(result.data, (json) {
        final list = json as List;
        return list
            .map((e) => RoomModel.fromJson(e as Map<String, dynamic>))
            .toList();
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> joinRoom(String id, String username) async {
    try {
      final result = await client.post(
        "game/$id/join",
        queryParameters: {
          "username": username,
        },
      );
      return BaseResponse.fromJson(result.data, (json) {
        return null;
      });
    } catch (e) {
      rethrow;
    }
  }
}

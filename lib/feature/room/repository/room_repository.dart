import 'package:flutter_skeleton/core/httt_client/base_response.dart';
import 'package:flutter_skeleton/feature/room/model/room_model.dart';

abstract class RoomRepository {
  Future<BaseResponse<List<RoomModel>>> getRooms();
  Future<BaseResponse<RoomModel>> createRoom();
  Future<BaseResponse> joinRoom(String id, String username);
}

import 'package:json_annotation/json_annotation.dart';

part 'server_time.g.dart';

@JsonSerializable()
class ServerTime {
  final int serverTime;

  ServerTime(this.serverTime);

  factory ServerTime.fromJson(Map<String, dynamic> json) =>
      _$ServerTimeFromJson(json);

  Map<String, dynamic> toJson() => _$ServerTimeToJson(this);
}

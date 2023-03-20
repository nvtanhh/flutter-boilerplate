import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_data.g.dart';

@JsonSerializable()
class RefreshTokenData {
  RefreshTokenData(this.accessToken);

  factory RefreshTokenData.fromJson(Map<String, dynamic> json) => _$RefreshTokenDataFromJson(json);

  @JsonKey(name: 'access_token')
  final String accessToken;
}

import 'package:flutter_riverpod_api/core/models/company_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel({
    required int id,
    required String name,
    required String username,
    required String email,
    required String phone,
    required String website,
    required CompanyModel company,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> data) =>
      _$UserModelFromJson(data);
}

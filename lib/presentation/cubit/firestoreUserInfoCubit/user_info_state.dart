part of '../firestoreUserInfoCubit/user_info_cubit.dart';

abstract class FirestoreGetUserInfoState {}

class CubitInitial extends FirestoreGetUserInfoState {}

class CubitUserLoading extends FirestoreGetUserInfoState {}

class CubitImageLoading extends FirestoreGetUserInfoState {}

class CubitImageLoaded extends FirestoreGetUserInfoState {
  String imageUrl;

  CubitImageLoaded(this.imageUrl);
}
class CubitUserLoaded extends FirestoreGetUserInfoState {
  UserPersonalInfo userPersonalInfo;

  CubitUserLoaded(this.userPersonalInfo);

}
class CubitSpecificUsersLoaded extends FirestoreGetUserInfoState {
  List<UserPersonalInfo> userPersonalInfo;

  CubitSpecificUsersLoaded(this.userPersonalInfo);

}

class CubitGetUserInfoFailed extends FirestoreGetUserInfoState {
  final String error;
  CubitGetUserInfoFailed(this.error);
}
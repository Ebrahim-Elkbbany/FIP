part of 'layout_cubit.dart';

@immutable
abstract class LayoutState {}

class LayoutInitial extends LayoutState {}
class ChangeBottomScreen extends LayoutState {}
class GetUserDataLoading extends LayoutState {}
class GetUserDataSuccess extends LayoutState {}
class GetUserDataError extends LayoutState {
  final String error;
  GetUserDataError(this.error);
}
part of 'apps_cubit.dart';

@immutable
abstract class AppsState extends Equatable {
  const AppsState();

  @override
  List<Object?> get props => [];
}

class AppsInitiateState extends AppsState {
  const AppsInitiateState();

  @override
  List<Object> get props => [];
}

class AppsLoading extends AppsState {
  const AppsLoading();

  @override
  List<Object> get props => [];
}

class AppsLoaded extends AppsState {
  final List<Application?>? apps;

  final ShortcutAppsModel? shortcutAppsModel;

  final String? sortType;

  AppsLoaded(
      {required this.apps,
      required this.sortType,
      required this.shortcutAppsModel});

  @override
  List<Object?> get props => [shortcutAppsModel, apps, sortType];
}

class AppsError extends AppsState {
  const AppsError(this.errorMessage);

  final String errorMessage;

  @override
  List<Object> get props => [errorMessage];
}

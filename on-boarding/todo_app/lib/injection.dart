import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/core/platform/network_info.dart';

import 'package:todo_app/features/todo/domain/repositories/repository.dart';
import 'package:todo_app/features/todo/domain/usecases/view_all_tasks.dart';
import 'package:http/http.dart' as http;
import 'features/todo/data/local/todolocal_data_source.dart';
import 'features/todo/data/remote/todo_remot_data_source.dart';
import 'features/todo/data/remote/todo_remote_data_sources_impl.dart';
import 'features/todo/data/repositeries/todo_repository_impl.dart';

import 'features/todo/data/local/todolocal_data_source_impl.dart';
import 'features/todo/presentation/bloc/viewAll_bloc/viewAll_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // bloc
  sl.registerFactory<ViewAllBloc>(
    () => ViewAllBloc(
      sl.get<
          ViewAllTasks>(), // Replace S1 with the actual type or instance you want to inject
    ),
  );

  // usecases
  sl.registerLazySingleton(() => ViewAllTasks(sl()));

  //repository

  sl.registerLazySingleton<TodoRepository>(() => TodoRepositoryImpl(
      localDataSource: sl(), networkInfo: sl(), remoteDataSource: sl()));

  // Data sources

  sl.registerLazySingleton<TodoRemoteDataSource>(
      () => TodoRemoteDataSourceImpl(client: sl()));

  sl.registerLazySingleton<TodoLocalDataSource>(
      () => TodoLocalDataSourceImpl(sharedPreferences: sl()));

  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  // external

  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}

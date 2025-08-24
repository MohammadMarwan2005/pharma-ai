import 'package:medi_note_reader/presentation/routing/routing_use_case.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/api/api_service.dart';
import '../../data/api/safe_api_caller.dart';
import '../../domain/repo/local_data_repo.dart';
import '../../presentation/lang/cubit/lang_cubit.dart';

final getIt = GetIt.instance;

Future<void> di() async {
  final sharedPrefs = await SharedPreferences.getInstance();
  const storage = FlutterSecureStorage();
  final localDataRepo = LocalDataRepo(
    sharedPrefs: sharedPrefs,
    storage: storage,
  );

  getIt.registerLazySingleton<LocalDataRepo>(() => localDataRepo);

  getIt.registerLazySingleton<Dio>(() {
    final dio = Dio();

    dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {'Accept': 'application/json'},
    );

    final localDataRepo = getIt<LocalDataRepo>();

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await localDataRepo.getToken();
          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },
      ),
    );

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ),
    );

    return dio;
  });

  // common
  getIt.registerLazySingleton<APIService>(() => APIService(getIt()));
  getIt.registerLazySingleton<SafeAPICaller>(() => SafeAPICaller());

  // repos:
  // getIt.registerLazySingleton<AuthRepo>(() => AuthRepo(getIt(), getIt()));

  // use cases:
  getIt.registerLazySingleton<RoutingUseCase>(() => RoutingUseCase(getIt()));

  // cubits:
  getIt.registerFactory<LangCubit>(() => LangCubit(getIt()));
}

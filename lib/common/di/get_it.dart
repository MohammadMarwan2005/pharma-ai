import 'package:medi_note_reader/data/repo/medicine_repo_impl.dart';
import 'package:medi_note_reader/domain/repo/medicine_repo.dart';
import 'package:medi_note_reader/domain/repo/order_repo.dart';
import 'package:medi_note_reader/domain/usecase/get_predictions_for_image.dart';
import 'package:medi_note_reader/presentation/routing/routing_use_case.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/api/api_service.dart';
import '../../data/api/safe_api_caller.dart';
import '../../data/repo/order_repo_impl.dart';
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
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        // add this line
      },
    );

    final localDataRepo = getIt<LocalDataRepo>();

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // final token = await localDataRepo.getToken();
          final String? token =
              "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJBZG1pbkBnbWFpbC5jb20iLCJqdGkiOiIxNTBmZmM1OC1iMjhlLTQzNzgtYWEwOS0zZjgyZjQ5ZWJhYzgiLCJlbWFpbCI6IkFkbWluQGdtYWlsLmNvbSIsIk5hbWVJZGVudGlmaWVyIjoiODU4MzJlODAtOGU1Zi00MmFlLTgxNTYtMDQ4NGJjY2M2MmUyIiwiZXhwIjoxNzU5MTg5NjI5LCJpc3MiOiJTZWN1cmVBcGkiLCJhdWQiOiJTZWN1cmVBcGlVc2VyIn0.uP0TZE3-5q5_4vwbqGsBz2oIgGAjwZkUQGKjjIbX3c8";
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
  getIt.registerLazySingleton<MedicineRepo>(
    () => MedicineRepoImpl(getIt(), getIt()),
  );
  getIt.registerLazySingleton<OrderRepo>(() => OrderRepoImpl(getIt(), getIt()));

  // use cases:
  getIt.registerLazySingleton<RoutingUseCase>(() => RoutingUseCase(getIt()));
  getIt.registerLazySingleton<GetPredictionsForImagesUseCase>(
    () => GetPredictionsForImagesUseCase(getIt()),
  );

  // cubits:
  getIt.registerFactory<LangCubit>(() => LangCubit(getIt()));
}

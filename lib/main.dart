import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medi_note_reader/domain/usecase/auto_login_use_case.dart';
import 'package:medi_note_reader/presentation/routing/app_router.dart';
import 'package:medi_note_reader/presentation/routing/routing_use_case.dart';
import 'common/di/get_it.dart';
import 'domain/repo/local_data_repo.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // final localDataRepo = getIt<LocalDataRepo>();
  // localDataRepo.deleteEverything();
  // this is temporary, until we implement the auth feature... (--we won't :) )
  final autoLoginUsecase = getIt<AutoLoginUseCase>();
  final autoLoginResult = await autoLoginUsecase();
  autoLoginResult.when(
    onSuccess: (successData) {},
    onError: (error) {
      print("error: $error");
    },
  );
  final routingUseCase = getIt<RoutingUseCase>();
  firstRoute = await routingUseCase.getFirstRoute();
  // usePathUrlStrategy();
  runApp(const MyApp());
}

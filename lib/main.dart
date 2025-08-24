import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  final localDataRepo = getIt<LocalDataRepo>();
  localDataRepo.deleteEverything();
  final routingUseCase = getIt<RoutingUseCase>();
  firstRoute = await routingUseCase.getFirstRoute();
  // usePathUrlStrategy();
  runApp(const MyApp());
}

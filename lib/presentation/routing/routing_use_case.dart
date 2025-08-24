import 'package:medi_note_reader/presentation/routing/routes.dart';

import '../../domain/repo/local_data_repo.dart';

class RoutingUseCase {
  final LocalDataRepo _localDataRepo;

  RoutingUseCase(this._localDataRepo);

  Future<String> getFirstRoute() async {
    final onboarded = _localDataRepo.hasOnboarded();
    if (!onboarded) return Routes.onboarding;
    final hasToken = await _localDataRepo.hasToken();
    if (!hasToken) return Routes.login;
    return Routes.home;
  }
}

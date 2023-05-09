import '../../data/datasource/local/app_local_data_source.dart';
import '../../data/repositories/app_repository_impl.dart';
import '../../domain/repositories/app_repository.dart';
import '../../domain/use_case/app_use_case.dart';
import '../libraries/libraries.dart';

final instance = GetIt.instance;

initInjector() {
  instance.registerLazySingleton<AppLocalDataSource>(
    () => AppLocalDataSourceImpl(),
  );
  instance.registerLazySingleton<AppRepository>(
    () => AppRepositoryImpl(
      localDataSource: GetIt.I.get<AppLocalDataSource>(),
    ),
  );
  instance.registerLazySingleton<AppUseCase>(
    () => AppUseCaseImpl(
      repository: GetIt.I.get<AppRepository>(),
    ),
  );
}

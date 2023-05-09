import '../../domain/entity/address_entity.dart';
import '../../domain/entity/failure.dart';
import '../../domain/repositories/app_repository.dart';
import '../../external/libraries/dartz.dart';
import '../datasource/local/app_local_data_source.dart';

class AppRepositoryImpl extends AppRepository {
  final AppLocalDataSource localDataSource;

  AppRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, List<AddressEntity>>> getAddress() async {
    try {
      final response = await localDataSource.getAddress();

      return Right(response);
    } catch (e) {
      return Left(ClientFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> upsertAddress(AddressEntity params) async {
    try {
      final response = await localDataSource.upsertAddress(params);

      return Right(response);
    } catch (e) {
      return Left(ClientFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> deleteAddress(AddressEntity params) async {
    try {
      final response = await localDataSource.deleteAddress(params);

      return Right(response);
    } catch (e) {
      return Left(ClientFailure());
    }
  }
}

import 'package:fpdart/fpdart.dart';
import 'package:pankti_app/core/error/failure.dart';
import 'package:pankti_app/core/common/entities/user.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, User>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });
  Future<Either<Failure, User>> loginWithEmailPassword({
    required String email,
    required String password,
  });

  Future<Either<Failure, User>> currentuser();
}

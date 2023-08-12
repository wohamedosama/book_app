import 'package:book_app/core/errors/failures.dart';
import 'package:book_app/features/home/data/models/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks();

  Future<Either<Failures, List<BookModel>>> fetchFeatureBooks();
}

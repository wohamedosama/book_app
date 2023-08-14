import 'package:book_app/core/app_services.dart';
import 'package:book_app/core/errors/failures.dart';
import 'package:book_app/features/home/data/models/BookModel.dart';
import 'package:book_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science',
      );
      List<BookModel> books = [];
      for (var element in data['items']) {
        try {
          books.add(BookModel.fromJson(element));
        } catch (e) {
          books.add(BookModel.fromJson(element));
        }
      }
      return right(books);
    } catch (error) {
      if (error is DioException) {
        return left(
          ServerFailure.fromDioError(error),
        );
      }
      return left(ServerFailure(error.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeatureBooks() async {
    try {
      var data = await apiServices.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming',
      );
      List<BookModel> books = [];
      for (var element in data['items']) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(error.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiServices.get(
        endPoint:
            'volumes?Filtering=free-ebook&Sorting=relevance&q=subject:programming',
      );
      List<BookModel> books = [];
      for (var element in data['items']) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDioError(error));
      } else {
        return left(ServerFailure(error.toString()));
      }
    }
  }
}

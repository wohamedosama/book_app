import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;

  Failures(this.errorMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout With ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout With ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout With ApiServer');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('Request With ApiServer Is Canceled');

      case DioExceptionType.connectionError:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('UnExpected Error, Please Try Again Later');

      case DioExceptionType.badCertificate:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      default:
        return ServerFailure('Opps There Was An Error, Please Try Again!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your Request Not Found, Please Try Again Later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server Error, Please Try Again Later');
    } else {
      return ServerFailure('Opps There Was An Error, Please Try Again!');
    }
  }
}

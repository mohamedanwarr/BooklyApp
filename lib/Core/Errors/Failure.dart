import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDiorError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timedout  with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timedout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timed out  with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate  with ApiServer ');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was Cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('No internet Connection ');
      case DioExceptionType.unknown:
        return ServerFailure('Opps There was an Error , please try again');
    }
  }

  factory ServerFailure.fromResponse(int statuscode, dynamic response) {
    if (statuscode == 404) {
      return ServerFailure('Your request was not found, please try later');
    } else if (statuscode == 500) {
      return ServerFailure('There is a problem with server, please try later');
    }else if (statuscode == 401||statuscode == 403||statuscode == 400) {
      return ServerFailure(response['error']['message']);
    }
    return ServerFailure('There was an error, please try later');
  }
}

// class CasheFailure extends Failure {
//   CasheFailure(super.message);
// }
//
// class NetworkFailure extends Failure {
//   NetworkFailure(super.message);
// }

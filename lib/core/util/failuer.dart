import 'package:dio/dio.dart';

abstract class Failuer {
  final String erroMessage;

  Failuer(this.erroMessage);
}

class ServiceFailure extends Failuer {
  ServiceFailure(super.errorMessage);
  factory ServiceFailure.dioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.badCertificate:
        return ServiceFailure('Certificate error');
      case DioExceptionType.badResponse:
        return ServiceFailure('badrsponse${dioException.response!.statusCode}');
      case DioExceptionType.cancel:
        return ServiceFailure('Request is Canceld');
      case DioExceptionType.connectionError:
        return ServiceFailure('Check your Interner');
      case DioExceptionType.connectionTimeout:
        return ServiceFailure('Connected time out ,try again');
      case DioExceptionType.receiveTimeout:
        return ServiceFailure('receiveTimeout, try agin');
      case DioExceptionType.sendTimeout:
        return ServiceFailure('sendTimeout, try again');
      case DioExceptionType.unknown:
        return ServiceFailure('Unexpected error occurred');

      default:
        return ServiceFailure('Unexpected error occurred');
    }
  }
}

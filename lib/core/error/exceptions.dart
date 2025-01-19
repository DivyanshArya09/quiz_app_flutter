class ServerException implements Exception {
  final String? message;
  ServerException({required this.message});
}

class CacheException implements Exception {}

class ApiException implements Exception {
  final String message;
  ApiException({required this.message});

  @override
  String toString() => message;
}

class ValidationException implements Exception {
  final String message;

  ValidationException({required this.message});
}

class AccountSetForDeletionException implements Exception {
  final String token, refreshToken;
  AccountSetForDeletionException(
      {required this.token, required this.refreshToken});
}

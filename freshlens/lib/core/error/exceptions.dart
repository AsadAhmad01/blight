class NetworkException implements Exception {
  final String message;
  const NetworkException(this.message);
}

class CacheException implements Exception {
  final String message;
  const CacheException(this.message);
}

class MLException implements Exception {
  final String message;
  const MLException(this.message);
}

class PermissionException implements Exception {
  final String message;
  const PermissionException(this.message);
}

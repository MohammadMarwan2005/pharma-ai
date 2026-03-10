class AuthCredential {
  final String userName;
  final bool darkMode;
  final String token;
  final DateTime expiresOn;

  const AuthCredential({
    required this.userName,
    required this.darkMode,
    required this.token,
    required this.expiresOn,
  });
}

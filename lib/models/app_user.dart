class AppUser {
  final String id; // <-- das brauchst du!
  final String email;
  final String username;

  AppUser({
    required this.id, // <-- auch im Konstruktor
    required this.email,
    required this.username,
  });
}

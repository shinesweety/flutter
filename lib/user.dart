class User {
  final String username;
  final String text;
  final String urlAvatar;

  User({required this.username, required this.text, required this.urlAvatar});

  static User fromJson(json) => User(
        username: json['username'],
        text: json['text'],
        urlAvatar: json['urlAvatar'],
      );
}

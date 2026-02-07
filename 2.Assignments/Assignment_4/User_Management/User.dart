class User {
  int _userId;
  String _email;
  String _password;


  set userId(int UserId) => _userId = UserId;
  set email(String Email) => _email = Email;
  set password(String password) => _password = password;

  get userId => _userId;
  get email => _email;
  get password => _password;

  User({required int userId, required String email, required String password})
    : _password = password,
      _email = email,
      _userId = userId;
}


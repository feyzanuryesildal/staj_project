class User{
  late String _name;
  late String _email;
  late String _password;

  User({required String name, required String email, required String password}){
    this._name=name;
    this._email=email;
    this._password=password;
  }
}
import 'User.dart';

class Customer extends User {
  String _shippingAddress;

  set shippingAddress(String ShippingAddress) =>
      _shippingAddress = ShippingAddress;

  get shippingAddress => _shippingAddress;
  Customer({
    required int userId,
    required String email,
    required String password,
    required String shippingAddress,
  }) : _shippingAddress = shippingAddress,
      super(userId: userId, email: email, password: password);
}


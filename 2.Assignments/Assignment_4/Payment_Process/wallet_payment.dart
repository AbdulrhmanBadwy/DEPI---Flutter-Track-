import 'payment.dart';

class WalletPayment extends Payment {
  String phoneNumber;

  WalletPayment(this.phoneNumber);

  @override
  void pay(double amount) {
    
  }

  @override
  void paymentDetails() {}
}

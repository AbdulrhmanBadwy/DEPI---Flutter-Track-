import 'payment.dart';

class CreditcardPayement extends Payment {
  String cardNumber;
  String expiryDate;
  int CVV;

  CreditcardPayement({
    required this.cardNumber,
    required this.expiryDate,
    required this.CVV,
  });

  @override
  void pay(double amount) {
    print('We Are Payed for This Prodcuts');
  }

  @override
  void paymentDetails() {
    print('Payment Details:'); 
  }
}

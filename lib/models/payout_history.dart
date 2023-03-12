class PayoutHistory {
  final String id;
  final String description;
  final String amount;
  final String date;
  final bool isPaid;

  PayoutHistory(
      {required this.id,
      required this.description,
      required this.amount,
      required this.date,
      this.isPaid = false});
}

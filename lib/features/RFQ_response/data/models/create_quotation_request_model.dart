class CreateQuotationRequestModel {
  final int rfqId;
  final String supplierId;
  final int productId;
  final int quantity;
  final double unitPrice;
  final int paymentTermId;
  final int deliveryTimeInDays;
  final double deliveryFee;
  final String deliveryTerm;
  final String notes;
  final DateTime validUntil;

  CreateQuotationRequestModel({
    required this.rfqId,
    required this.supplierId,
    required this.productId,
    required this.quantity,
    required this.unitPrice,
    required this.paymentTermId,
    required this.deliveryTimeInDays,
    required this.deliveryFee,
    required this.deliveryTerm,
    required this.notes,
    required this.validUntil,
  });

  factory CreateQuotationRequestModel.fromJson(Map<String, dynamic> json) {
    return CreateQuotationRequestModel(
      rfqId: json['rfqId'] as int,
      supplierId: json['supplierId'] as String,
      productId: json['productId'] as int,
      quantity: json['quantity'] as int,
      unitPrice: (json['unitPrice'] as num).toDouble(),
      paymentTermId: json['paymentTermId'] as int,
      deliveryTimeInDays: json['deliveryTimeInDays'] as int,
      deliveryFee: (json['deliveryFee'] as num).toDouble(),
      deliveryTerm: json['deliveryTerm'] as String,
      notes: json['notes'] as String,
      validUntil: DateTime.parse(json['validUntil'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'rfqId': rfqId,
      'supplierId': supplierId,
      'productId': productId,
      'quantity': quantity,
      'unitPrice': unitPrice,
      'paymentTermId': paymentTermId,
      'deliveryTimeInDays': deliveryTimeInDays,
      'deliveryFee': deliveryFee,
      'deliveryTerm': deliveryTerm,
      'notes': notes,
      'validUntil': validUntil.toIso8601String(),
    };
  }
}

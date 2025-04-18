class DashboardRequestModel {
  String supplierId;
  int year;
  int month;
  int? limit;

  DashboardRequestModel({
    required this.supplierId,
    required this.year,
    required this.month,
    this.limit,
  });

  Map<String, dynamic> toJson() => {
        "supplierId": supplierId,
        "year": year,
        "month": month,
      };
  Map<String, dynamic> paginatedToJson() => {
        "supplierId": supplierId,
        "year": year,
        "month": month,
        "limit": limit,
      };
}

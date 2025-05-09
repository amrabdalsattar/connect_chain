class DashboardRequestModel {
  int year;
  int month;
  int? limit;

  DashboardRequestModel({
    required this.year,
    required this.month,
    this.limit,
  });

  Map<String, dynamic> toJson() => {
        'year': year,
        'month': month,
      };
  Map<String, dynamic> paginatedToJson() => {
        'year': year,
        'month': month,
        'limit': limit,
      };
}

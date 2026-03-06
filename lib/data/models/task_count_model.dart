class TaskCountModel {
  String? id;
  int? sum;

  TaskCountModel({
    required this.id,
    required this.sum,
  });

  TaskCountModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sum = json['sum'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'sum': sum,
    };
  }
}
class person {
  final String name;
  final int age;
  final String email;
  final String mno;
  final String id;
  person({
    required this.name,
    required this.age,
    required this.email,
    required this.mno,
    required this.id
  });
  Map<String, dynamic> toJson() =>
      {
        'Name': name,
        'Age': age,
        'Email': email,
        'mno': mno,
      };
}
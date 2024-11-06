class TableData {
  final String title;
  final String filiere;
  final String semestre;
  final List<Map<String, dynamic>> professors;
  final List<Map<String, dynamic>> salles;
  final List<String> columns;
  late final List<Map<String, dynamic>> sessions;

  TableData(
      {required this.title,
      required this.filiere,
      required this.semestre,
      required this.professors,
      required this.salles,
      required this.columns,
      required this.sessions});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'filiere': filiere,
      'semestre': semestre,
      'professors': professors,
      'salles': salles,
      'columns': columns,
      'rows': sessions,
    };
  }
}

class Session {
  final String id;
  final String name;
  final String room;
  final String professor;
  final DateTime time;

  Session({
    required this.id,
    required this.name,
    required this.room,
    required this.professor,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'room': room,
      'professor': professor,
      'time': time,
    };
  }
}

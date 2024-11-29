class TarotCard {
  final String name;
  final String suit;
  final String image;
  final String general;
  final String love;
  final String career;
  String dbId;

  TarotCard(
      this.name, this.suit, this.image, this.general, this.love, this.career,
      {this.dbId = ""});

  factory TarotCard.fromSnapshot(Map<String, dynamic> json) {
    return TarotCard(
      json['name'] ?? '',
      json['suit'] ?? '',
      json['image'] ?? '',
      json['general'] ?? '',
      json['love'] ?? '',
      json['career'] ?? '',
    );
  }
}

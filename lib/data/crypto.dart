class Crypto {
  String id;
  String name;
  String symbpl;
  double changePercent24hr;
  double priceUsd;
  double marketCapUsd;
  int rank;
  Crypto(this.id, this.name, this.symbpl, this.changePercent24hr, this.priceUsd,
      this.marketCapUsd, this.rank);
  factory Crypto.fromMapJson(Map<String,dynamic> jsonMapObject) {
    return Crypto(
      jsonMapObject['id'],
      jsonMapObject['name'],
      jsonMapObject['symbol'],
      double.parse(jsonMapObject['changePercent24Hr']),
      double.parse(jsonMapObject['priceUsd']),
      double.parse(jsonMapObject['marketCapUsd']),
      int.parse(jsonMapObject['rank']),
    );
  }
}

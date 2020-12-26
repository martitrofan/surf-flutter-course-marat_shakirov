///Класс отображающий схему объекта - местоположение.
class Sight {
  /// название места;
  final String name;

  ///  долгота ;
  final double lon;

  ///  широта;
  final double lat;

  ///  путь до картинки;
  final String url;

  ///  описание места;
  final String details;

  ///  тип;
  final String type;

  ///  время работы;
  final String workedTime;

  Sight({
    this.name,
    this.lon,
    this.lat,
    this.url,
    this.details,
    this.type,
    this.workedTime,
  });
}

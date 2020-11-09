part of 'models.dart';

class Assistant {
  final String id;
  final String name;
  final String rating;
  final AssetImage photo;

  Assistant({
    @required this.id,
    @required this.name,
    @required this.rating,
    @required this.photo,
  });
}

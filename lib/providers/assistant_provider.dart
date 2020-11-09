part of 'providers.dart';

class AssistantProvider with ChangeNotifier {
  // data dummy
  List<Assistant> _assistentItem = [
    Assistant(
      id: "a1",
      name: "Michael Antonio",
      rating: "4.6",
      photo: AssetImage("assets/images/photo_assistant_1.jpg"),
    ),
    Assistant(
      id: "a2",
      name: "Steven Mike",
      rating: "4.5",
      photo: AssetImage("assets/images/photo_assistant_2.jpg"),
    ),
  ];

  // getter data dummy
  List<Assistant> get assistentItem {
    return [..._assistentItem];
  }

  Assistant findById(String id) {
    return _assistentItem.firstWhere((element) => element.id == id);
  }
}

part of 'pages.dart';

class AssistantPage extends StatelessWidget {
  static const routeName = '/assistant';

  @override
  Widget build(BuildContext context) {
    // state management to get data from assistant provider
    final _assistant = Provider.of<AssistantProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sidotopo, Wetan, Kota Surabaya",
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        backgroundColor: mainColor,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 4 * SizeConfig.heightMultiplier,
              bottom: 4 * SizeConfig.heightMultiplier,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: FittedBox(
                child: Text(
                  "2 Assistant available in your areas",
                  style: blackTextFont.copyWith(
                    color: Colors.grey,
                    fontSize: 2 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // list to get data using map
          Column(
            children: _assistant.assistentItem
                .map(
                  (assistant) => Padding(
                    padding: EdgeInsets.fromLTRB(
                      2 * SizeConfig.widthMultiplier,
                      0,
                      2 * SizeConfig.widthMultiplier,
                      2 * SizeConfig.widthMultiplier,
                    ),
                    child: AssistantCard(
                      assistant.id,
                      assistant.name,
                      assistant.rating,
                      assistant.photo,
                      () {
                        Navigator.of(context).pushNamed(
                          ProductPage.routeName,
                          arguments: assistant.id,
                        );
                      },
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

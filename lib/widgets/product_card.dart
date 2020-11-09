part of 'widgets.dart';

class ProductCard extends StatefulWidget {
  final String id;
  final String title;
  final String subTitle;
  final int price;
  final AssetImage image;

  ProductCard(
    this.id,
    this.title,
    this.subTitle,
    this.price,
    this.image,
  );

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int _defaultValue = 1;
  var isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        padding: EdgeInsets.all(
          1 * SizeConfig.widthMultiplier + 1 * SizeConfig.heightMultiplier,
        ),
        height: 16 * SizeConfig.heightMultiplier,
        child: Row(
          children: <Widget>[
            Container(
              height: 16 * SizeConfig.heightMultiplier,
              width: 22 * SizeConfig.widthMultiplier,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: widget.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 3 * SizeConfig.widthMultiplier,
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FittedBox(
                        child: Container(
                          child: Text(
                            widget.title,
                            style: blackTextFont.copyWith(
                              fontSize: 2.5 * SizeConfig.textMultiplier,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      FittedBox(
                        child: Container(
                          child: Text(
                            widget.subTitle,
                            style: blackTextFont.copyWith(
                              fontSize: 1.5 * SizeConfig.textMultiplier,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FittedBox(
                        child: Container(
                          child: Text(
                            NumberFormat.currency(
                                    locale: "id_ID",
                                    decimalDigits: 0,
                                    symbol: "Rp. ")
                                .format(widget.price),
                            style: blackTextFont.copyWith(
                              fontSize: 2 * SizeConfig.textMultiplier,
                              color: mainColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      isPressed
                          ? Counter(
                              decimalPlaces: 0,
                              color: mainColor,
                              initialValue: _defaultValue,
                              minValue: 1,
                              maxValue: 10,
                              step: 1,
                              onChanged: (value) {
                                setState(() {
                                  _defaultValue = value;
                                });
                              },
                            )
                          : Container(
                              height: 4 * SizeConfig.heightMultiplier,
                              width: 25 * SizeConfig.widthMultiplier,
                              child: RaisedButton.icon(
                                elevation: 0,
                                icon: Icon(
                                  Icons.add_circle_outline,
                                  size: 4 * SizeConfig.imageSizeMultiplier,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  "BELI",
                                  style: whiteTextFont.copyWith(
                                    fontSize: 1.5 * SizeConfig.textMultiplier,
                                  ),
                                ),
                                color: mainColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                onPressed: () {
                                  setState(() {
                                    isPressed = true;
                                  });
                                },
                              ),
                            ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

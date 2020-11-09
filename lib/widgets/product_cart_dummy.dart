part of 'widgets.dart';

class ProductCartDummy extends StatefulWidget {
  final String title;
  final int price;
  final AssetImage image;

  ProductCartDummy(
    this.title,
    this.price,
    this.image,
  );

  @override
  _ProductCartDummyState createState() => _ProductCartDummyState();
}

class _ProductCartDummyState extends State<ProductCartDummy> {
  int _defaultValue = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        1 * SizeConfig.widthMultiplier + 1 * SizeConfig.heightMultiplier,
      ),
      height: 16 * SizeConfig.heightMultiplier,
      child: Row(
        children: <Widget>[
          Container(
            height: 8 * SizeConfig.heightMultiplier,
            width: 14 * SizeConfig.widthMultiplier,
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
                            fontSize: 2.3 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Container(
                        child: Text(
                          "$_defaultValue x ${widget.price}",
                          style: blackTextFont.copyWith(
                            fontSize: 1.8 * SizeConfig.textMultiplier,
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
                    CounterButton(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

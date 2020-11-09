part of 'pages.dart';

class CartPage extends StatefulWidget {
  static const routeName = '/cart';

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final loadProduct = Provider.of<ProductProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Keranjang Belanja (Michael Antonio)",
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: blackTextFont.copyWith(),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: mainColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.contact_phone,
              color: mainColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 4 * SizeConfig.heightMultiplier,
              bottom: 2 * SizeConfig.heightMultiplier,
              left: 3 * SizeConfig.widthMultiplier,
              right: 3 * SizeConfig.widthMultiplier,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Terdapat 2 produk",
                  style: blackTextFont.copyWith(
                    fontSize: 2 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Hapus keranjang",
                  style: blackTextFont.copyWith(
                    color: Colors.red,
                    fontSize: 1.5 * SizeConfig.textMultiplier,
                  ),
                )
              ],
            ),
          ),
          Column(
            children: loadProduct.productItems
                .map(
                  (prod) => Padding(
                    padding: EdgeInsets.fromLTRB(
                      2 * SizeConfig.widthMultiplier,
                      0,
                      2 * SizeConfig.widthMultiplier,
                      2 * SizeConfig.widthMultiplier,
                    ),
                    child: CartCard(
                      prod.title,
                      prod.subTitle,
                      prod.price,
                      prod.image,
                    ),
                  ),
                )
                .toList()
                .sublist(0, 2),
          ),
          SizedBox(
            height: 4 * SizeConfig.heightMultiplier,
          ),
          ListCart(
            "Subtotal",
            "Rp. 63.000",
            blackTextFont.copyWith(
              fontSize: 2 * SizeConfig.textMultiplier,
            ),
          ),
          ListCart(
            "Ongkos Kirim",
            "Gratis",
            blackTextFont.copyWith(
              fontSize: 1.8 * SizeConfig.textMultiplier,
              color: Colors.red,
            ),
          ),
          ListCart(
            "Total Belanja",
            "Rp. 63.000",
            blackTextFont.copyWith(
              fontSize: 2.3 * SizeConfig.textMultiplier,
              color: mainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 6 * SizeConfig.heightMultiplier,
            margin: EdgeInsets.symmetric(
              vertical: 4 * SizeConfig.heightMultiplier,
              horizontal: 3 * SizeConfig.widthMultiplier,
            ),
            child: RaisedButton(
              child: Text(
                "PESAN SEKARANG",
                style: whiteTextFont.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              color: mainColor,
              onPressed: () {
                Navigator.of(context).pushNamed(PaymentPage.routeName);
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

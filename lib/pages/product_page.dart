part of 'pages.dart';

class ProductPage extends StatefulWidget {
  static const routeName = '/product';

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    final assistantId = ModalRoute.of(context).settings.arguments as String;
    final loadedAssistant = Provider.of<AssistantProvider>(
      context,
      listen: false,
    ).findById(assistantId);

    final products = Provider.of<ProductProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          loadedAssistant.name,
          style: blackTextFont,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.contact_phone,
              color: mainColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 2 * SizeConfig.heightMultiplier,
                  horizontal: 4 * SizeConfig.widthMultiplier,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    // fillColor: Color(0xFFE4E4E4),
                    // filled: true,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 5 * SizeConfig.imageSizeMultiplier,
                    ),
                    hintText: "Cari produk, kategori atau brand",
                    hintStyle: blackTextFont.copyWith(
                      color: Colors.grey,
                      fontSize: 2 * SizeConfig.textMultiplier,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 4 * SizeConfig.widthMultiplier,
                ),
                child: ChipsProduct(),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 4 * SizeConfig.widthMultiplier,
                  vertical: 2 * SizeConfig.heightMultiplier,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FittedBox(
                      child: Text(
                        "Terdapat ${products.productItems.length} Produk",
                        style: blackTextFont.copyWith(
                          color: Colors.grey,
                          fontSize: 2 * SizeConfig.textMultiplier,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        ActionChip(
                          backgroundColor: Color(0xFFEFEFEF),
                          label: Text(
                            "Sort",
                            style: blackTextFont.copyWith(
                                fontSize: 2 * SizeConfig.textMultiplier,
                                color: Colors.redAccent),
                          ),
                          avatar: Icon(
                            Icons.sort_by_alpha,
                            size: 4 * SizeConfig.imageSizeMultiplier,
                            color: Colors.redAccent,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              topLeft: Radius.circular(30),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        ActionChip(
                          backgroundColor: Color(0xFFEFEFEF),
                          label: Text(
                            "Filter",
                            style: blackTextFont.copyWith(
                              fontSize: 2 * SizeConfig.textMultiplier,
                              color: Colors.redAccent,
                            ),
                          ),
                          avatar: Icon(
                            Icons.filter_list,
                            size: 4 * SizeConfig.imageSizeMultiplier,
                            color: Colors.redAccent,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // show data dummy
              Column(
                children: products.productItems
                    .map(
                      (prod) => Padding(
                        padding: EdgeInsets.fromLTRB(
                          2 * SizeConfig.widthMultiplier,
                          0,
                          2 * SizeConfig.widthMultiplier,
                          2 * SizeConfig.widthMultiplier,
                        ),
                        child: ProductCard(
                          prod.id,
                          prod.title,
                          prod.subTitle,
                          prod.price,
                          prod.image,
                        ),
                      ),
                    )
                    .toList(),
              ),
              SizedBox(
                height: 22 * SizeConfig.heightMultiplier,
              ),
            ],
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
              initialChildSize: 0.2,
              minChildSize: 0.12,
              maxChildSize: 0.5,
              builder: (ctx, sc) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 2 * SizeConfig.heightMultiplier,
                    horizontal: 1.5 * SizeConfig.widthMultiplier,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: ListView(
                    controller: sc,
                    children: <Widget>[
                      ListTile(
                        leading: Badge(
                          badgeContent: Text("4"),
                          child: Icon(Icons.shopping_cart),
                        ),
                        title: Text(
                          "Total Belanja",
                          style: blackTextFont.copyWith(
                            fontSize: 2 * SizeConfig.textMultiplier,
                            color: Colors.grey,
                          ),
                        ),
                        subtitle: Text(
                          "Rp. 34.000",
                          style: blackTextFont.copyWith(
                            color: mainColor,
                            fontSize: 2.5 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        trailing: Container(
                          height: 5 * SizeConfig.heightMultiplier,
                          child: RaisedButton(
                            elevation: 0,
                            color: mainColor,
                            child: Text(
                              "PESAN",
                              style: whiteTextFont.copyWith(
                                fontSize: 2 * SizeConfig.textMultiplier,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamed(
                                CartPage.routeName,
                                arguments: loadedAssistant.id,
                              );
                            },
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      // bisa di ganti dengan column seperti
                      // yang di baris 143, lalu menggunakan map.
                      // ini merupakan widget dummy yang bisa diedit
                      // di file nya.
                      ProductCartDummy(
                        "Jeruk Medan Super",
                        24000,
                        AssetImage("assets/images/jeruk_medan.jpg"),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

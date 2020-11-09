part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  static const routeName = '/payment';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Informasi Pengiriman",
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
              bottom: 4 * SizeConfig.heightMultiplier,
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
                  "Lihat keranjang",
                  style: blackTextFont.copyWith(
                    color: Colors.red,
                    fontSize: 1.5 * SizeConfig.textMultiplier,
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(AddressPage.routeName);
            },
            child: ListCart(
              "Alamat Pengiriman",
              "Pilih",
              blackTextFont.copyWith(
                fontSize: 1.6 * SizeConfig.textMultiplier,
                color: Colors.red,
              ),
            ),
          ),
          SizedBox(
            height: 2 * SizeConfig.heightMultiplier,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 3 * SizeConfig.widthMultiplier,
              right: 3 * SizeConfig.widthMultiplier,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Tanggal Sampai",
                  style: blackTextFont.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 2 * SizeConfig.textMultiplier,
                  ),
                ),
                SizedBox(
                  height: 1 * SizeConfig.heightMultiplier,
                ),
                Text(
                  "${DateFormat.yMMMEd().format(DateTime.now())}",
                  style: blackTextFont.copyWith(
                    fontSize: 1.8 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 6 * SizeConfig.heightMultiplier,
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
          SizedBox(
            height: 4 * SizeConfig.heightMultiplier,
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
          SizedBox(
            height: 2 * SizeConfig.heightMultiplier,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 3 * SizeConfig.widthMultiplier,
              right: 3 * SizeConfig.widthMultiplier,
            ),
            padding: EdgeInsets.all(
              1 * SizeConfig.widthMultiplier + 1 * SizeConfig.heightMultiplier,
            ),
            color: Colors.lightBlueAccent[100],
            child: Text(
              "Mohon selesaikan pembayaranmu dalam waktu 30 menit. Pesanan akan otomatis batal jika kamu tidak menyelesaikan pembayaran",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: blackTextFont.copyWith(
                fontSize: 1.7 * SizeConfig.textMultiplier,
                wordSpacing: 1 * SizeConfig.heightMultiplier,
              ),
            ),
          ),
          SizedBox(
            height: 2 * SizeConfig.heightMultiplier,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 3 * SizeConfig.widthMultiplier,
              right: 3 * SizeConfig.widthMultiplier,
            ),
            child: Text(
              "Dengan membayar, saya menyetujui Syarat & Ketentuan belanja di Along Along",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: blackTextFont.copyWith(
                fontSize: 1.7 * SizeConfig.textMultiplier,
              ),
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
              onPressed: () {},
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

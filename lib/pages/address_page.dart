part of 'pages.dart';

class AddressPage extends StatefulWidget {
  static const routeName = '/address';

  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  TextEditingController _saveAddressAsController = TextEditingController();
  TextEditingController _receivedNameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _fullAddressController = TextEditingController();
  TextEditingController _kelurahanPostCodeController = TextEditingController();

  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Alamat Baru",
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
          SizedBox(
            height: 3 * SizeConfig.heightMultiplier,
          ),
          FieldForm(
            "Simpan Alamat Sebagai",
            "Please fill the address field",
            TextInputType.text,
            null,
            null,
            _saveAddressAsController,
            null,
          ),
          FieldForm(
            "Nama Penerima",
            "Please fill the name field",
            TextInputType.text,
            null,
            null,
            _receivedNameController,
            null,
          ),
          FieldForm(
            "Nomor Telepon",
            "Please fill the phone field",
            TextInputType.phone,
            null,
            "+62 ",
            _phoneController,
            null,
          ),
          FieldForm(
            "Alamat Lengkap",
            "Please fill the address field",
            TextInputType.text,
            null,
            null,
            _fullAddressController,
            null,
          ),
          FieldForm(
            "Pilih Kelurahan - Kode Pos",
            "Please fill the field",
            TextInputType.text,
            null,
            null,
            _kelurahanPostCodeController,
            null,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 2 * SizeConfig.heightMultiplier,
              horizontal: 3 * SizeConfig.textMultiplier,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Jadikan Alamat Utama",
                  style: blackTextFont.copyWith(
                    fontSize: 2 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Switch(
                  value: _isSwitched,
                  onChanged: (value) {
                    setState(() {
                      _isSwitched = value;
                    });
                  },
                  activeColor: mainColor,
                  activeTrackColor: mainColor,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 1.5 * SizeConfig.textMultiplier,
            ),
            child: ListCart(
              "Lokasi Lebih Akurat",
              "Ubah Lokasi",
              blackTextFont.copyWith(
                fontSize: 1.5 * SizeConfig.textMultiplier,
                color: Colors.red,
                fontWeight: FontWeight.w600,
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
                "SIMPAN",
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

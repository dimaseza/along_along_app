part of 'pages.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.black,
          ),
          SafeArea(
            child: Container(
              color: Colors.white,
            ),
          ),
          ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 2 * SizeConfig.heightMultiplier,
                  bottom: 6 * SizeConfig.heightMultiplier,
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: FittedBox(
                    child: Text(
                      "Welcome back.. :)",
                      style: blackTextFont.copyWith(
                        color: mainColor,
                        fontSize: 5 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              FieldForm(
                "Phone Number",
                "Please fill the phone number",
                TextInputType.number,
                null,
                "+62 ",
                phoneController,
                null,
              ),
              Container(
                height: 6 * SizeConfig.heightMultiplier,
                margin: EdgeInsets.symmetric(
                  vertical: 12 * SizeConfig.heightMultiplier,
                  horizontal: 10 * SizeConfig.widthMultiplier,
                ),
                child: RaisedButton(
                  color: mainColor,
                  elevation: 0,
                  child: Text(
                    "LOGIN",
                    style: whiteTextFont.copyWith(
                      fontSize: 2.5 * SizeConfig.textMultiplier,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: () {
                    if (phoneController.text == "") {
                      Flushbar(
                        duration: Duration(seconds: 2),
                        flushbarPosition: FlushbarPosition.TOP,
                        backgroundColor: mainColor,
                        message: "Please fill the fields",
                      )..show(context);
                    } else {
                      Navigator.of(context).pushNamed(OtpPage.routeName);
                    }
                  },
                ),
              ),
              SizedBox(
                height: 4 * SizeConfig.heightMultiplier,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

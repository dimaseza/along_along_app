part of 'pages.dart';

class OtpPage extends StatefulWidget {
  static const routeName = '/otp';

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.black,
          ),
          SafeArea(
            child: Container(color: Colors.white),
          ),
          ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 2 * SizeConfig.heightMultiplier,
                  bottom: 4 * SizeConfig.heightMultiplier,
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: FittedBox(
                    child: Text(
                      "SMS Verification",
                      style: blackTextFont.copyWith(
                        color: mainColor,
                        fontSize: 4 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 3 * SizeConfig.heightMultiplier,
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: FittedBox(
                    child: Text(
                      "Please enter 6 digit verification code\nthat was sent to your phone number",
                      style: blackTextFont.copyWith(
                        fontSize: 2 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 3 * SizeConfig.widthMultiplier,
                ),
                height: 10 * SizeConfig.heightMultiplier,
                child: PinInputTextField(
                  controller: otpController,
                  pinLength: 6,
                  enabled: true,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.go,
                  decoration: UnderlineDecoration(
                    colorBuilder: PinListenColorBuilder(
                      mainColor,
                      Colors.black,
                    ),
                    gapSpace: 1 * SizeConfig.heightMultiplier,
                  ),
                ),
              ),
              SizedBox(
                height: 5 * SizeConfig.heightMultiplier,
              ),
              Container(
                height: 6 * SizeConfig.heightMultiplier,
                margin: EdgeInsets.symmetric(
                  horizontal: 10 * SizeConfig.widthMultiplier,
                ),
                child: RaisedButton(
                  elevation: 0,
                  child: Text(
                    "VERIFY",
                    style: whiteTextFont.copyWith(
                      fontSize: 2.5 * SizeConfig.textMultiplier,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  color: mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      AssistantPage.routeName,
                      (route) => false,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 5 * SizeConfig.heightMultiplier,
              ),
              Container(
                height: 6 * SizeConfig.heightMultiplier,
                margin: EdgeInsets.symmetric(
                  horizontal: 10 * SizeConfig.widthMultiplier,
                ),
                child: RaisedButton(
                  color: accentColor3,
                  elevation: 0,
                  child: Text(
                    "RESEND CODE",
                    style: whiteTextFont.copyWith(
                      fontSize: 2.5 * SizeConfig.textMultiplier,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 4 * SizeConfig.heightMultiplier,
              ),
            ],
          )
        ],
      ),
    );
  }
}

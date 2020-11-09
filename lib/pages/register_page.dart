part of 'pages.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = '/register';

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isAgreeTermsService = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController postCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: accentColor3,
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
                  bottom: 4 * SizeConfig.heightMultiplier,
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: FittedBox(
                    child: Text(
                      "Hello there.. :)",
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
                "Name",
                "Please fill the field name",
                TextInputType.text,
                null,
                null,
                nameController,
                null,
              ),
              FieldForm(
                "Email Address",
                "Please fill the field email",
                TextInputType.emailAddress,
                null,
                null,
                emailController,
                null,
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
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      left: defaultMargin,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.add_location,
                        size: 6 * SizeConfig.imageSizeMultiplier,
                      ),
                      color: mainColor,
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        right: defaultMargin,
                        left: 2 * SizeConfig.widthMultiplier,
                      ),
                      child: TextFormField(
                        controller: addressController,
                        decoration: InputDecoration(
                          labelText: "Address",
                          hintText: "Address",
                        ),
                        maxLines: 3,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please fill the field address";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              FieldForm(
                "Post Code",
                "Please fill the field post code",
                TextInputType.number,
                null,
                null,
                postCodeController,
                5,
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 2 * SizeConfig.widthMultiplier,
                ),
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      value: isAgreeTermsService,
                      onChanged: (value) {
                        setState(() {
                          isAgreeTermsService = value;
                        });
                      },
                    ),
                    Text(
                      "Agree to our Terms of Service\nand Privacy Policy",
                      style: blackTextFont.copyWith(
                        color: Colors.grey[750],
                        fontSize: 2 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 3 * SizeConfig.heightMultiplier,
              ),
              Container(
                height: 6 * SizeConfig.heightMultiplier,
                margin: EdgeInsets.symmetric(
                  horizontal: 10 * SizeConfig.widthMultiplier,
                ),
                child: RaisedButton(
                  elevation: 0,
                  child: Text(
                    "REGISTER",
                    style: isAgreeTermsService
                        ? blackTextFont.copyWith(
                            color: Colors.white,
                            fontSize: 2.5 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.w600,
                          )
                        : whiteTextFont.copyWith(
                            fontSize: 2.5 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.w600,
                          ),
                  ),
                  color: isAgreeTermsService ? mainColor : accentColor2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: () {
                    if (!(nameController.text.trim() != "" &&
                        emailController.text.trim() != "" &&
                        phoneController.text.trim() != "" &&
                        addressController.text.trim() != "" &&
                        postCodeController.text.trim() != "")) {
                      Flushbar(
                        duration: Duration(seconds: 2),
                        flushbarPosition: FlushbarPosition.TOP,
                        backgroundColor: mainColor,
                        message: "Please fill all the fields",
                      )..show(context);
                    } else {
                      Navigator.of(context).pushNamed(OtpPage.routeName);
                    }
                  },
                ),
              ),
              SizedBox(
                height: 5 * SizeConfig.heightMultiplier,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

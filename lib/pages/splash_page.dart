part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/img_background.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Container(
                    height: 60 * SizeConfig.imageSizeMultiplier,
                    margin: EdgeInsets.only(
                      bottom: 2 * SizeConfig.heightMultiplier,
                    ),
                    child: Image.asset(
                      "assets/images/img_logo.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 6 * SizeConfig.heightMultiplier,
                  width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                  margin: EdgeInsets.only(
                    bottom: 2 * SizeConfig.heightMultiplier,
                  ),
                  child: RaisedButton(
                    child: Text(
                      "REGISTER",
                      style: blackTextFont.copyWith(
                        fontSize: 2.5 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    color: accentColor2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(RegisterPage.routeName);
                    },
                  ),
                ),
                Container(
                  height: 6 * SizeConfig.heightMultiplier,
                  width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                  child: RaisedButton(
                    child: Text(
                      "LOGIN",
                      style: blackTextFont.copyWith(
                        fontSize: 2.5 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(LoginPage.routeName);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

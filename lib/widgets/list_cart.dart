part of 'widgets.dart';

class ListCart extends StatelessWidget {
  final String title;
  final String subTitle;
  final TextStyle style;

  ListCart(
    this.title,
    this.subTitle,
    this.style,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 2 * SizeConfig.heightMultiplier,
        left: 3 * SizeConfig.widthMultiplier,
        right: 3 * SizeConfig.widthMultiplier,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            title,
            style: blackTextFont.copyWith(
              fontSize: 2 * SizeConfig.textMultiplier,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            subTitle,
            style: style,
          )
        ],
      ),
    );
  }
}

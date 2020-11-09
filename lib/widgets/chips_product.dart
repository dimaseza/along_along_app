part of 'widgets.dart';

class ChipsProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.cover,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildChipProduct("Bahan Pokok"),
          SizedBox(
            width: 2 * SizeConfig.widthMultiplier,
          ),
          buildChipProduct("Makanan Segar"),
          SizedBox(
            width: 2 * SizeConfig.widthMultiplier,
          ),
          buildChipProduct("Bumbu"),
          SizedBox(
            width: 2 * SizeConfig.widthMultiplier,
          ),
          buildChipProduct("Snack"),
        ],
      ),
    );
  }

  Widget buildChipProduct(String label) {
    return Chip(
      label: Text(
        label,
        style: blackTextFont.copyWith(
          fontSize: 2 * SizeConfig.textMultiplier,
          fontWeight: FontWeight.w400,
        ),
      ),
      backgroundColor: Color(0xFFEFEFEF),
    );
  }
}

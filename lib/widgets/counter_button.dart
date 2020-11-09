part of 'widgets.dart';

class CounterButton extends StatelessWidget {
  
  // bisa ditambahkan function atau method increment dan decrement.
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        0.8 * SizeConfig.heightMultiplier +
            0.8 * SizeConfig.widthMultiplier,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 5 * SizeConfig.heightMultiplier,
            width: 5 * SizeConfig.widthMultiplier,
            child: FloatingActionButton(
              heroTag: null,
              child: Icon(
                Icons.remove,
                size: 5 * SizeConfig.imageSizeMultiplier,
              ),
              elevation: 0,
              backgroundColor: mainColor,
              onPressed: () {},
            ),
          ),
          Container(
            padding: EdgeInsets.all(4.0),
            child: new Text(
              "1",
              style: blackTextFont.copyWith(
                fontSize: 2 * SizeConfig.textMultiplier,
              ),
            ),
          ),
          SizedBox(
            height: 5 * SizeConfig.heightMultiplier,
            width: 5 * SizeConfig.widthMultiplier,
            child: FloatingActionButton(
              heroTag: null,
              child: Icon(
                Icons.add,
                size: 5 * SizeConfig.imageSizeMultiplier,
              ),
              elevation: 0,
              backgroundColor: mainColor,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

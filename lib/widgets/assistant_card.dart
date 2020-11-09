part of 'widgets.dart';

class AssistantCard extends StatelessWidget {
  final String id;
  final String name;
  final String rating;
  final AssetImage photo;
  final Function onTap;

  AssistantCard(
    this.id,
    this.name,
    this.rating,
    this.photo,
    this.onTap,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Container(
          height: 14 * SizeConfig.heightMultiplier,
          child: Center(
            child: ListTile(
              // opsional bisa menggunakan Container.
              // dengan height dan width yg fixed size.
              leading: CircleAvatar(
                radius: 8 * SizeConfig.imageSizeMultiplier,
                backgroundImage: photo,
              ),
              title: Text(
                name,
                style: blackTextFont.copyWith(
                  fontSize: 2.5 * SizeConfig.textMultiplier,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    size: 4 * SizeConfig.imageSizeMultiplier,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: 1 * SizeConfig.widthMultiplier,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: rating,
                          style: blackTextFont.copyWith(
                            color: Colors.amber,
                            fontSize: 2 * SizeConfig.textMultiplier,
                          ),
                        ),
                        TextSpan(
                          text: " /5",
                          style: blackTextFont.copyWith(
                            color: Colors.grey,
                            fontSize: 2 * SizeConfig.textMultiplier,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:music_ui_app/core/utils/size.dart';
import 'package:music_ui_app/musice-app/gui/widgets/artiste/data_fake.dart';

class CardArtiste extends StatelessWidget {
  CardArtiste({super.key, required this.artisteData});
  final ArtisteData artisteData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: Color(0xFFffffff).withOpacity(0.1),
        ),
        width: 100.0,
        height: 120.0,
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 35,
              backgroundImage:
                  AssetImage(artisteData.image),
            ),
            15.geth,
            Text(
              artisteData.desc,
              style: TextStyle(
                fontSize: 13.0,
                color: Colors.white,
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}

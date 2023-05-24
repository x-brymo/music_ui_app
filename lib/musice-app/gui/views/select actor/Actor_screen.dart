import 'package:flutter/material.dart';
import 'package:music_ui_app/core/utils/size.dart';
import 'package:music_ui_app/musice-app/gui/views/select%20actor/Genres_screen.dart';
import 'package:music_ui_app/musice-app/gui/widgets/artiste/data_fake.dart';
import '../../widgets/artiste/custom_card_artiste.dart';

class ActorScreen extends StatelessWidget {
  const ActorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0B1E),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: Text(
            "Pick Some Artist You Like",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Column(
        children: [
          35.geth,
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.only(right: 15, left: 5),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 144,
                    //childAspectRatio: 8/4,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 25.0),
                itemCount: mydata.length,
                itemBuilder: (context, i) {
                  return Opacity(
                    opacity: i == mydata.length - 1 ? 0.5 : 1.0,
                    child: CardArtiste(artisteData: mydata[i]),
                  );
                  // CardArtiste(
                  //   artisteData: mydata[i],
                  // );
                }),
          ),
          Transform.translate(
            offset: Offset(11.0, 15.0),
            child: Container(
              height: 12,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color(0x58FFFFFF).withOpacity(0.02),
                )
              ]), // شفافية 50%
              width: double.infinity,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: MaterialButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (builder) => GenresScreen()));
              },
              minWidth: double.infinity,
              height: 50,
              color: 0xffFE2851.getC,
              child: Text(
                "Done",
                style: TextStyle(color: Color(0xffFFFFFF)),
              ),
            ),
          ),
          25.geth
        ],
      ),
    );
  }
}

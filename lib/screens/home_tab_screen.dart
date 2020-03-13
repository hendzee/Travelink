import 'package:flutter/material.dart';
import 'package:equinox/equinox.dart' as eva;

class HomeTabScreen extends StatelessWidget {
  // Trending data
  List<String> trendingData = [ 'Sengkaling', 'Jatim Park I', 'Jatim Park II' ];

  @override
  Widget build(BuildContext context) {
    return eva.EqLayout(
      child: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: eva.EqText.heading4('Travelink', style: TextStyle( fontFamily: 'Pacifico' ),),
                    ),
                    Container(
                      child: eva.EqIconButton(
                        onTap: (){},
                        appearance: eva.EqWidgetAppearance.ghost,
                        icon: eva.EvaIcons.searchOutline,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: trendingData.length,
                  itemBuilder: ( context, index ){
                    return Text( trendingData[ index ] );
                  }
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}

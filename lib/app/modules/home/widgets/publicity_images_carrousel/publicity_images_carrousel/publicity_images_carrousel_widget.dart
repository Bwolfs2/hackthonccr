import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shimmer/shimmer.dart';
import 'publicity_images_carrousel_controller.dart';

class PublicityImagesCarrouselWidget extends StatefulWidget {
  @override
  _PublicityImagesCarrouselWidgetState createState() =>
      _PublicityImagesCarrouselWidgetState();
}

class _PublicityImagesCarrouselWidgetState extends ModularState<
    PublicityImagesCarrouselWidget, PublicityImagesCarrouselController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .3,
      child: Column(
        children: [
          Expanded(
            child: Observer(
              builder: (BuildContext context) {
                if (controller.images == null) {
                  return Shimmer.fromColors(
                    baseColor: Colors.grey[400],
                    highlightColor: Colors.grey[100],
                    child: Container(
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            width: 2,
                          )),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * .3,
                      child: Center(
                        child: Shimmer.fromColors(
                          baseColor: Colors.grey[400],
                          highlightColor: Colors.grey[100],
                          child: Icon(
                            Icons.image,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  );
                }

                return PageView.builder(
                    controller: controller.pageController,
                    itemCount: controller.images.length,
                    itemBuilder: (_, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          image: DecorationImage(
                            image: controller.images[index].url != null
                                ? NetworkImage(controller.images[index].url)
                                : AssetImage(controller.images[index].asset),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        margin: const EdgeInsets.all(20),
                      );
                    });
              },
            ),
          ),
          Observer(
            builder: (BuildContext context) {
              if (controller.images == null) {
                return Container();
              }

              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  controller.images.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(3),
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: controller.selectedPage == index
                          ? Color(0xff313630)
                          : Color(0xff9A9693),
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

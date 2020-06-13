import 'package:flutter/material.dart';
import 'package:hackthonccr/app/modules/home/models/publicity_image_model.dart';
import 'package:hackthonccr/app/modules/home/repositories/publicity/publicity_repository.dart';
import 'package:mobx/mobx.dart';

part 'publicity_images_carrousel_controller.g.dart';

class PublicityImagesCarrouselController = _PublicityImagesCarrouselControllerBase
    with _$PublicityImagesCarrouselController;

abstract class _PublicityImagesCarrouselControllerBase with Store {
  final PublicityRepository publicityRepository;
  _PublicityImagesCarrouselControllerBase(this.publicityRepository) {
    init();
  }

  @action
  Future init() async {
    pageController.addListener(() {
      if (pageController.page.ceil() != selectedPage) {
        selectedPage = pageController.page.ceil();
      }
    });

    // images = await publicityRepository.getPublicityImages();
  }

  @observable
  List<PublicityImageModel> images = [
    PublicityImageModel(asset: "assets/publicidade2_980x528.png"),
    PublicityImageModel(asset: "assets/publicidade_980x528 (2).png"),
  ];

  final pageController = PageController(initialPage: 0);

  @observable
  int selectedPage = 0;
}

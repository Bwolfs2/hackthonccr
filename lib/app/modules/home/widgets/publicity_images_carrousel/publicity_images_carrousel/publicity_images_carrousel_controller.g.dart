// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publicity_images_carrousel_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PublicityImagesCarrouselController
    on _PublicityImagesCarrouselControllerBase, Store {
  final _$imagesAtom =
      Atom(name: '_PublicityImagesCarrouselControllerBase.images');

  @override
  List<PublicityImageModel> get images {
    _$imagesAtom.reportRead();
    return super.images;
  }

  @override
  set images(List<PublicityImageModel> value) {
    _$imagesAtom.reportWrite(value, super.images, () {
      super.images = value;
    });
  }

  final _$selectedPageAtom =
      Atom(name: '_PublicityImagesCarrouselControllerBase.selectedPage');

  @override
  int get selectedPage {
    _$selectedPageAtom.reportRead();
    return super.selectedPage;
  }

  @override
  set selectedPage(int value) {
    _$selectedPageAtom.reportWrite(value, super.selectedPage, () {
      super.selectedPage = value;
    });
  }

  final _$initAsyncAction =
      AsyncAction('_PublicityImagesCarrouselControllerBase.init');

  @override
  Future<dynamic> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  @override
  String toString() {
    return '''
images: ${images},
selectedPage: ${selectedPage}
    ''';
  }
}

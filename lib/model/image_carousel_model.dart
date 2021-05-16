class ImageCarouselModel {
  String _thumbnail;
  String _thumbnailTitle;
  String _thumbnailSubTitle;

  ImageCarouselModel(
    this._thumbnail,
    this._thumbnailTitle,
    this._thumbnailSubTitle,
  );

  String get thumbnailSubTitle => _thumbnailSubTitle;

  String get thumbnailTitle => _thumbnailTitle;

  String get thumbnail => _thumbnail;

}

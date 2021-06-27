class TextCarouselModel {
  String _heading;
  String _subHeading;
  bool _isHeader;

  TextCarouselModel(this._heading, {String subHeading, bool isHeader = false})
      : _subHeading = subHeading,
        _isHeader = isHeader;

  bool get isHeader => _isHeader;

  String get subHeading => _subHeading;

  String get heading => _heading;
}

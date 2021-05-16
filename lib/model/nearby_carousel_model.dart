class NearByModel {

  String _destinationName;
  String _destinationDriveHours;
  String _thumbnail;

  NearByModel(this._destinationName, this._destinationDriveHours, this._thumbnail);

  String get thumbnail => _thumbnail;

  String get destinationDriveHours => _destinationDriveHours;

  String get destinationName => _destinationName;
}
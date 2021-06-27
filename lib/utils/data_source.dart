import 'package:design_airbnb/model/image_carousel_model.dart';
import 'package:design_airbnb/model/nearby_carousel_model.dart';
import 'package:design_airbnb/model/text_carousel_model.dart';

final nearByImages = <NearByModel>[
  NearByModel('Mussoorie', '5-hour drive', 'images/img_mussoorie.jpeg'),
  NearByModel('Kasauli', '4.5-hour drive', 'images/img_kasauli.jpeg'),
  NearByModel('Haldwani', '9-hour drive', 'images/img_haldwani.jpeg'),
  NearByModel('Manali', '4.5-hour drive', 'images/img_manali.jpeg'),
];

final experienceCarouselData = <ImageCarouselModel> [
  ImageCarouselModel('images/img_experience_1.jpeg', 'Experiences', 'Local things to do, wherever you are.'),
  ImageCarouselModel('images/img_experience_2.jpeg', 'Online Experiences', 'Travel from home with Online Experiences.'),
  ImageCarouselModel('images/img_experience_3.jpeg', 'Featured Collection: Wanderlust', 'Live, interactive activities led by Hosts.'),
  ImageCarouselModel('images/img_experience_4.jpeg', 'Nature and Wild', 'Feel the power of nature and stunning views.'),
];

final liveAnywhereCarouselData = <ImageCarouselModel> [
  ImageCarouselModel('images/img_live_any_1.jpeg', 'Entire homes', null),
  ImageCarouselModel('images/img_live_any_2.jpeg', 'Unique stays', null),
  ImageCarouselModel('images/img_live_any_3.jpeg', 'Farms and nature', null),
  ImageCarouselModel('images/img_live_any_4.jpeg', 'Pets allowed', null),
];

final textCarouselData = <TextCarouselModel> [
  TextCarouselModel('For guests', isHeader: true),
  TextCarouselModel('Our Covid-19 response', subHeading: 'Health and safety updates'),
  TextCarouselModel('Cancellation options', subHeading: 'Learn what\'s covered'),
  TextCarouselModel('Help Centre', subHeading: 'Get support'),

  TextCarouselModel('For Hosts', isHeader: true),
  TextCarouselModel('Message from Brian Chesky', subHeading: 'Hear from our CEO'),
  TextCarouselModel('Resources for hosting', subHeading: 'What\'s affected by COVID-19'),
  TextCarouselModel('Providing frontline stays', subHeading: 'Learn how to help'),

  TextCarouselModel('For COVID-19 responders', isHeader: true),
  TextCarouselModel('Frontline stays', subHeading: 'Learn about our programme'),
  TextCarouselModel('Sign up', subHeading: 'Check for housing options'),
  TextCarouselModel('Make a donation', subHeading: 'Support nonprofit organisations'),

  TextCarouselModel('More', isHeader: true),
  TextCarouselModel('Airbnb Newsroom', subHeading: 'Latest announcements'),
  TextCarouselModel('Watch \'Made Possible by Hosts\'', subHeading: 'Short films about Airbnb trips'),
];
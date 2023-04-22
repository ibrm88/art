
import 'package:get_it/get_it.dart';
import 'package:untitled1/google_ads.dart';

final locator = GetIt.instance;

void setuplocator() async{
  locator.registerLazySingleton<googleAds>(() => googleAds());
}
import 'package:movie_curation/domain/useCase/content/load_popular_content_list_use_case.dart';
import 'package:movie_curation/utilities/index.dart';

abstract class DomainModules {
  DomainModules._();

  static void dependencies() {
    /* Home */
    Get.lazyPut(() => LoadPopularMoviesUseCase(Get.find()), fenix: true);
    Get.lazyPut(() => TmdbLoadMovieTrailerKeyUseCase(Get.find()), fenix: true);
    Get.lazyPut(() => TmdbLoadMovieCastsUseCase(Get.find()), fenix: true);
    Get.lazyPut(() => TmdbLoadDramaCastsUseCase(Get.find()), fenix: true);
    Get.lazyPut(() => YoutubeLoadSearchListUseCase(Get.find()), fenix: true);
    Get.lazyPut(() => TmdbLoadPopularDramasUseCase(Get.find()), fenix: true);
    Get.lazyPut(() => LoadPopularContentListUseCase(Get.find()), fenix: true);
  }
}

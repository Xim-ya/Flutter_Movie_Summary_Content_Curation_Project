import 'index.dart';

/* Home Screen Tablet*/
final double contentTopP = 4.25.h; // 58px (ipad 12.9)
final double contentLeftP = 6.2.h; // 84px (ipad 12.9)
final double contentBottomP = 4.1.h; // 56px (ipad 12.9)
final double groupButtonTextSize = 9.55.sp; // 36px (ipad 12.9)
final double groupButtonH = 15.9.sp;
final double groupButtonRP = 2.2.w; // 22px (ipad 12.9)
final double contentResponsiveW = 76.25.w; // 22px (ipad 12.9)
final double contentResponsiveH = 21.7.h; // 296px (ipad 12.9)
final double contentSliderDivideP =
    9.9.h; // 148px (ipad 12.9) //TODO 디테일은 나중에 결정 (수정필요)
/* Home Screen Tablet  > Movie Content */
final double kMovieTitle = 15.6.sp;

/* Movie Detail Screen Tablet */
final double kCastDiverP = 4.7.h;

/* Global Resonsive Size */
//// Based On Font
final double kTS16 = 4.8.sp;
final double kTS50 = 14.8.sp;
final double kTS22 = 6.5.sp;
final double kTS100 = 26.6.sp;
//// Based On Width
final double kWS54 = 5.29.w;
final double kWS200 = 19.6.w;
final double kWS100 = 9.78.w;
//// Based On Width
final double kHS500 = 36.65.h;

/* Color */
const Color kYellow = Color(0xFFFFE24B);
const Color kDarkGrey = Color(0xFF1D1D1D);
const Color kLightGrey = Color(0xFF646464);
const Color kCloudyGrey = Color(0xFFB9B9B9);
const Color kCloudyLightGrey = Color(0xFF505050);

class FontStyles {
  double? size;
  bool? isMobile;

  FontStyles([this.size, this.isMobile]) //size 값은 Optional 타입
      /*  Home Screen (Tablet)  */
      : categoryGroupButton = TextStyle(
          fontSize: isMobile ?? false ? 17.7.sp : 9.55.sp,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        movieTitle = TextStyle(
          color: Colors.white,
          fontSize: isMobile ?? false ? 27.2.sp : 15.6.sp,
          fontWeight: FontWeight.w400,
          overflow: TextOverflow.ellipsis,
        ),
        gRated = TextStyle(
          color: Colors.white,
          fontSize: isMobile ?? false ? 12 : 4.69.sp,
          fontWeight: FontWeight.normal,
        ),
        releaseY = TextStyle(
          color: Colors.white,
          fontSize: isMobile ?? false ? 16 : 5.69.sp,
          fontWeight: FontWeight.normal,
        ),
        description = TextStyle(
          color: Colors.white,
          fontSize: isMobile ?? false ? 14 : 5.8.sp,
          fontWeight: FontWeight.normal,
          overflow: TextOverflow.ellipsis,
        ),
        watchButton = TextStyle(
            color: Colors.black,
            fontSize: isMobile ?? false ? 12 : 6.5.sp,
            fontWeight: FontWeight.bold),
        elseButton = TextStyle(
            color: Colors.white,
            fontSize: isMobile ?? false ? 12 : 6.5.sp,
            fontWeight: FontWeight.bold),

        /*  Movie Detail Screen  (Tablet)  */
        actorName = TextStyle(
            color: kCloudyGrey,
            fontSize: isMobile ?? false ? 12 : kTS16,
            overflow: TextOverflow.ellipsis),
        categoryTitle = TextStyle(
            color: Colors.white, fontSize: size, fontFamily: 'Staatliches'),
        categorySubTitle = TextStyle(
            color: kCloudyLightGrey, fontSize: size, fontFamily: 'Staatliches'),
        youtubeReviewTitle = TextStyle(
          color: Colors.white,
          fontSize: size,
        ),
        youtubeReviewLikes = const TextStyle(color: Colors.white, fontSize: 16);

  /* Home Screen (tablet)*/
  final TextStyle movieTitle;
  final TextStyle gRated;
  final TextStyle releaseY;
  final TextStyle description;
  final TextStyle watchButton;
  final TextStyle elseButton;
  final TextStyle categoryGroupButton;

/* Movie Detail Screen  (tablet)*/
  final TextStyle actorName;
  final TextStyle categoryTitle;
  final TextStyle categorySubTitle;
  final TextStyle youtubeReviewTitle;
  final TextStyle youtubeReviewLikes;
}

// 디바이스 종류(Mobile, Tablet)에 따라 각각 다른 사이즈를 반환하는 메소드
double responsiveSize(
    {required double mobileS,
    required double tabletS,
    required bool isMobile}) {
  return isMobile ? mobileS : tabletS;
}

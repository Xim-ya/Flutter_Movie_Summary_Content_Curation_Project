import 'package:movie_curation/utilities/index.dart';

/* ๐ ํด๋น ์คํฌ๋ฆฐ ์์ ฏ์์ `Flutter Hook`์ ์ฌ์ฉํ๋ ์ด์ 
  *  Getx๋ฅผ ์ฌ์ฉํด์ ์ ๊ทผํด๋ ๋ฌด๋ฐฉํ๊ฒ ์ง๋ง ์ด๋ ๊ฒ ํด๋น ์คํฌ๋ฆฐ ์์ ฏ์์๋ง ํ์ํ state ๊ด๋ฆฌ ๋ก์ง์
  *  UI์ state๋ก์ง์ ๊ฒฐํฉ์ํค๋ ๋ฐฉ๋ฒ์ ์ ํธํจ.
  *
  * 06.19 - PageView ๊ธฐ๋ฅ์ ๋ด๊ณ  ํ๋ ๋ชจ๋ ํด๋์ค๋ฅผ ๋ง๋๋ ค๊ณ  ํ์ง๋ง ๊ตฌํ ์คํจ
  * 1. PageController๋ฅผ ๋ถ๋ฆฌํ๋ฉด Widget์์ Controller์ ๋์์ ํ์ง ๋ชปํจ (- no client issue)
  * 2. [HookWidget]์ ์ถ์ํ ํด๋์ค๋ก ์์ ๋ฐ์ ์ ์์.
  * 3. Hook์ Valunotifier state๋ณ์๋ ์ฌ์ฉ๋๋ Context์์์๋ง ์ ์ธ์ด ๊ฐ๋ฅ.
  * 4. Getx Controller๋ก ์ ๊ทผ ํด๋ณด๋ ค๊ณ  ํ์ง๋ง ์์ ๊ฐ์ ๋ฌธ์ ๊ฐ ๋๋ถ๋ถ ๋์ผํ๊ฒ ๋ฐ์.
  *  */

class HomePagedView extends HookWidget {
  const HomePagedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // VM Controller  ์์ฑ
    Get.lazyPut(
        () => HomeViewModel(Get.find(), Get.find(), Get.find(), Get.find()));

    //  PagedViewScreen์ Screen Index, 0 : ํ ์คํฌ๋ฆฐ, 1 : ์ปจํ์ธ  ์์ธ ์คํฌ๋ฆฐ
    final _screenIndex = useState(0);

    // PagedView Controller
    final PageController _pagedController =
        PageController(initialPage: _screenIndex.value, keepPage: true);

    // PagedView ์์์ ํ๋ฉด์ด๋(route) ํ๋ ๋ฉ์๋
    void _pagedRouteHandler() {
      _pagedController.animateToPage(_screenIndex.value == 0 ? 1 : 0,
          duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    }

    // PagedView์์ ๊ด๋ฆฌํ๋ ์คํฌ๋ฆฐ ๋ฆฌ์คํธ -(ํ๋ฉด์ด๋ ๋ฉ์๋๋ฅผ ์ธ์๋ก ์ ๋ฌ)
    final screenList = [
      HomeScreen(routeAction: _pagedRouteHandler),
      ContentDetailScreen(routeAction: _pagedRouteHandler),
    ];

    return PageView.builder(
      controller: _pagedController,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: screenList.length,
      onPageChanged: (index) {
        _screenIndex.value = index;
      },
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return screenList[index];
      },
    );
  }
}

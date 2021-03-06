import 'package:movie_curation/utilities/index.dart';

class ContentThumbnailVerticalSlider extends StatelessWidget {
  ContentThumbnailVerticalSlider({Key? key}) : super(key: key);

  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      // child: ListView.builder(
      //   shrinkWrap: true,
      //   itemCount: 0,
      //   itemBuilder: (context, index) {
      //     if (index < searchVM.selectedMovies.length) {
      //       final movieItem = searchVM.selectedMovies[index];
      //       return Container(
      //         padding: EdgeInsets.only(bottom: 22, top: 22, left: 32),
      //         height: 200,
      //         child: Row(
      //           children: [
      //             /* Left Side - Image */
      //             AspectRatio(
      //               aspectRatio: 1,
      //               child: CachedNetworkImage(
      //                 imageUrl:
      //                     "https://image.tmdb.org/t/p/w500${movieItem.posterUrl}",
      //                 imageBuilder: (context, imageProvider) => Container(
      //                   decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(16),
      //                     image: DecorationImage(
      //                       image: imageProvider,
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //                 errorWidget: (context, url, error) =>
      //                     const Icon(Icons.error),
      //               ),
      //             ),
      //             /* Right Side - Description(title, description, year) */
      //             Expanded(
      //               child: Padding(
      //                 padding: const EdgeInsets.only(left: 26),
      //                 child: Column(
      //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Row(
      //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                       children: [
      //                         // Title
      //                         Text("??? ?????????",
      //                             style: FontStyles().searchedContentTitle),
      //                         // Release Year
      //                         Container(
      //                             margin: EdgeInsets.only(right: 30),
      //                             child: Text(
      //                               "2018",
      //                               style: FontStyles().searchedContentRYear,
      //                             ))
      //                       ],
      //                     ),
      //                     // Description
      //                     Text(
      //                       "?????? 2??? ??? ???????????? ?????? ????????? ??????????????? ???????????? ??????????????? ????????? ????????? ??????. ??????????????? ????????? ?????? ????????? ?????? ?????? ?????? ????????? ????????? ??????????????? ?????? ????????? ???????????? ????????? ???????????? ????????????. ????????? ?????? ????????? ????????? ????????? ????????? ????????? ????????? ????????? ?????? ????????? ????????? ??????????????? ???????????? ?????????",
      //                       style: FontStyles().searchedContentDescription,
      //                       maxLines: 3,
      //                       overflow: TextOverflow.ellipsis,
      //                     )
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       );
      //     } else {
      //       return Container(
      //         child: Center(
      //           child: CircularProgressIndicator(),
      //         ),
      //       );
      //     }
      //   },
      // ),
    );
  }
}

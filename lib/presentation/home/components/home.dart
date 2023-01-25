import 'package:blog/models/feed_model.dart';
import 'package:blog/presentation/widgets/feed_widget.dart';
import 'package:blog/presentation/widgets/status.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  final List<FeedModel> feeds = [
    const FeedModel(
      img:
          "https://img.freepik.com/free-photo/portrait-dark-skinned-cheerful-woman-with-curly-hair-touches-chin-gently-laughs-happily-enjoys-day-off-feels-happy-enthusiastic-hears-something-positive-wears-casual-blue-turtleneck_273609-43443.jpg?w=2000",
      author: "Sound Byte",
      time: "1 hr",
      description:
          "Was great meeting up with Anna Ferguson and Dave Bishop at the breakfast talk!",
      like: "45",
      comments: "45",
    ),
    const FeedModel(
      img:
          "https://img.freepik.com/free-photo/portrait-dark-skinned-cheerful-woman-with-curly-hair-touches-chin-gently-laughs-happily-enjoys-day-off-feels-happy-enthusiastic-hears-something-positive-wears-casual-blue-turtleneck_273609-43443.jpg?w=2000",
      author: "Sound Byte",
      time: "1 hr",
      description:
          "'Was great meeting up with Anna Ferguson and Dave Bishop at the breakfast talk!'",
      like: "45",
      comments: "45",
    ),
    const FeedModel(
      img:
          "https://img.freepik.com/free-photo/portrait-dark-skinned-cheerful-woman-with-curly-hair-touches-chin-gently-laughs-happily-enjoys-day-off-feels-happy-enthusiastic-hears-something-positive-wears-casual-blue-turtleneck_273609-43443.jpg?w=2000",
      author: "Sound Byte",
      time: "1 hr",
      description:
          "'Was great meeting up with Anna Ferguson and Dave Bishop at the breakfast talk!'",
      like: "45",
      comments: "45",
    ),
    const FeedModel(
      img:
          "https://img.freepik.com/free-photo/portrait-dark-skinned-cheerful-woman-with-curly-hair-touches-chin-gently-laughs-happily-enjoys-day-off-feels-happy-enthusiastic-hears-something-positive-wears-casual-blue-turtleneck_273609-43443.jpg?w=2000",
      author: "Sound Byte",
      time: "1 hr",
      description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et ligula euismod, elementum diam eu, posuere nunc. Aenean eleifend lorem ac nunc interdum luctus. Cras consequat volutpat libero, nec ornare mauris dictum eu. Nunc eget velit eget sem pulvinar sodales. Maecenas feugiat orci lacus, pulvinar volutpat quam bibendum in. Vivamus cursus eu risus a tristique. Donec non quam hendrerit, eleifend nisi eu, porttitor ex. Curabitur faucibus blandit ornare.
Proin arcu tortor, egestas sit amet posuere nec, interdum et ex. Sed ultrices vitae ligula eu cursus. Morbi non magna eget velit viverra condimentum eu sit amet ligula. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam imperdiet ante enim, ac iaculis odio vehicula in. Nam eu molestie justo. Maecenas eu felis tincidunt, mollis eros a, ornare mauris. Fusce massa erat, ultrices a diam vel, convallis tincidunt lorem. Donec pulvinar libero eu condimentum imperdiet. Proin interdum magna felis, a congue elit scelerisque at.

Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse turpis ante, volutpat vel sapien nec, aliquet facilisis felis. Maecenas elementum enim congue, fringilla urna ut, blandit felis. Sed eget dolor cursus, dignissim odio nec, commodo arcu. Donec quis massa metus. Integer vitae feugiat purus, in hendrerit sapien. Duis consequat, mi quis convallis molestie, elit quam elementum dui, sed commodo orci augue ac dui. Maecenas enim elit, pellentesque eu pretium at, mattis vitae arcu. Pellentesque suscipit elementum dui, ut condimentum est luctus at. Vivamus vel semper nisi. Quisque elementum pretium ex, eget bibendum lorem viverra eget. Morbi dignissim rhoncus ipsum vel bibendum. Maecenas libero nisi, scelerisque sit amet aliquet sit amet, elementum sed sapien.

Cras non commodo justo. Quisque lacinia fringilla ex, vel pharetra velit imperdiet sit amet. Phasellus venenatis blandit elit, sed scelerisque velit. Donec at ipsum non dolor iaculis lobortis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent rhoncus sapien non tempus scelerisque. Curabitur aliquet nibh vitae nibh consectetur ultrices. Aliquam sed nulla porttitor leo consequat rutrum. Aliquam erat volutpat. Nullam facilisis, lacus sed sagittis pharetra, neque tortor dictum metus, quis mollis nisi orci non velit. Pellentesque sem felis, hendrerit a ipsum quis, interdum elementum ex. Morbi pharetra sagittis urna, ut suscipit urna porta sed. Aliquam mollis orci elementum tellus placerat elementum. Fusce quam dui, maximus a facilisis vel, iaculis nec dolor. Quisque eros libero, gravida in nisi non, sagittis accumsan magna. Duis posuere orci sem, sed tincidunt neque euismod ac.

Morbi eu magna bibendum, finibus tortor ac, pharetra leo. In ac euismod sem. Mauris ut enim quis tellus accumsan sollicitudin sed sit amet metus. Praesent a malesuada sem, eget dictum mi. Mauris finibus fringilla erat non egestas. Sed augue purus, faucibus sed elementum nec, porttitor id turpis. Nullam dignissim tellus nec nunc viverra tristique. Nunc dapibus eget dolor sit amet efficitur. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
""",
      like: "45",
      comments: "4",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Status(),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                  itemCount: feeds.length,
                  itemBuilder: (context, index) => FeedUI(
                        feed: feeds[index],
                        // img: images[index].img,
                        // title: images[index].title,
                        // description: images[index].description,
                        // ratings: images[index].ratings,
                      )),
            ),
          ],
        ),
      ),
    );
  }
}

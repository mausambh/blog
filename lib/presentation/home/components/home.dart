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
      description:
          "'Was great meeting up with Anna Ferguson and Dave Bishop at the breakfast talk!'",
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

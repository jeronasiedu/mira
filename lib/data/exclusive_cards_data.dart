// final List exclusiveCards = [
//   {
//     "title": "Ashantifest 2.9GB",
//     "description":
//         "Buy the 2.9GB of Data Bundle for just GHc25 and get an extra 500MB bonus valid for 30 days",
//     "price": "GHc25",
//     "image": "assets/chatting.svg"
//   },
//   {
//     "title": "1000MB 30-day pack",
//     "description": "Buy the 1000MB 30-day pack at GHc8.3",
//     "price": "GHc8.3",
//     "image": "assets/begin_chat.svg"
//   },
//   {
//     "title": "150MB 7 day pack",
//     "description": "Buy the 150MB 7-day pack at GHc1.5",
//     "price": "GHc1.5",
//     "image": "assets/ideas.svg"
//   },
//   {
//     "title": "2.5GB 3-day pack",
//     "description": "Buy the 2.5GB 3-day pack at GHc12",
//     "price": "GHc12",
//     "image": "assets/real_life.svg"
//   },
// ];

class SingleCard {
  final String title;
  final String description;
  final String price;
  final String image;

  SingleCard(
      {required this.title,
      required this.description,
      required this.price,
      required this.image});
}

// create exclusive cards consisting of single card
List<SingleCard> exclusiveCardsList = [
  SingleCard(
      title: "Ashantifest 2.9GB",
      description:
          "Buy the 2.9GB of Data Bundle for just GHc25 and get an extra 500MB bonus valid for 30 days",
      price: "GHc25",
      image: "assets/chatting.svg"),
  SingleCard(
      title: "1000MB 30-day pack",
      description: "Buy the 1000MB 30-day pack at GHc8.3",
      price: "GHc8.3",
      image: "assets/begin_chat.svg"),
  SingleCard(
      title: "150MB 7 day pack",
      description: "Buy the 150MB 7-day pack at GHc1.5",
      price: "GHc1.5",
      image: "assets/ideas.svg"),
  SingleCard(
      title: "2.5GB 3-day pack",
      description: "Buy the 2.5GB 3-day pack at GHc12",
      price: "GHc12",
      image: "assets/real_life.svg"),
];

import 'package:cardapp_nestedclasses/model/OccasionClass.dart';
import 'package:cardapp_nestedclasses/model/VarietyClass.dart';
import 'package:flutter/material.dart';

class Gifts {
  String giftImage;
  String giftName;
  String giftPrice;

  List<Occasion> occasion;
  List<Variety> variety;
  List<Detail> details;

  Gifts(
      {this.giftImage,
      this.giftName,
      this.giftPrice,
      this.occasion,
      this.variety,
      this.details});
}

List<Gifts> gifts = [
  Gifts(
    giftImage:
        "https://image.freepik.com/free-photo/beautiful-spring-flowers-blue-wooden-background_176873-3222.jpg",
    giftName: "Flowers & Plants",
    giftPrice: "From £19",
    occasion: [
      Occasion(occName: "Birthdays"),
      Occasion(occName: "Anniversary"),
      Occasion(occName: "Wedding"),
      Occasion(occName: "Congratulations"),
      Occasion(occName: "Thank You"),
      Occasion(occName: "Condolences"),
    ],
    variety: [
      Variety(
          varImage:
              "https://image.freepik.com/free-photo/beautiful-wedding-bouquet-roses_24837-420.jpg",
          varName: "The Scented Luxe Roses",
          varPrice: "£20.99",
          varRating: "3.5",
          details: [
            Detail(
              detImage:
                  "https://image.freepik.com/free-photo/beautiful-wedding-bouquet-roses_24837-420.jpg",
              detName: "The Scented Luxe Roses",
            )
          ]),
      Variety(
          varImage:
              "https://image.freepik.com/free-psd/top-view-happy-birthday-bouquet-tulips-with-card-anniversary-celebration_23-2148671465.jpg",
          varName: "The Tulip Bouquet",
          varPrice: "£5.99",
          varRating: "4.5",
          details: [
            Detail(
              detImage:
                  "https://image.freepik.com/free-psd/top-view-happy-birthday-bouquet-tulips-with-card-anniversary-celebration_23-2148671465.jpg",
              detName: "The Tulip Bouquet",
            )
          ]),
      Variety(
        varImage:
            "https://image.freepik.com/free-photo/closeup-shot-luxurious-bouquet-pink-roses-white-red-dahlias_181624-23613.jpg",
        varName: "The Winter Flowers",
        varPrice: "£45.99",
        varRating: "5",
          details: [
            Detail(
              detImage: "https://image.freepik.com/free-photo/closeup-shot-luxurious-bouquet-pink-roses-white-red-dahlias_181624-23613.jpg",

              detName: "The Winter Flowers",
            )
          ]
      ),
      Variety(
        varImage:
            "https://image.freepik.com/free-photo/vertical-shot-white-flowers-pot-table_181624-24670.jpg",
        varName: "The White Snow",
        varPrice: "£29.99",
        varRating: "2.5",

          details: [
            Detail(
              detImage: "https://image.freepik.com/free-photo/vertical-shot-white-flowers-pot-table_181624-24670.jpg",

              detName: "The White Snow",
            )
          ]
      ),
    ],
  ),
  Gifts(
    giftImage:
        "https://image.freepik.com/free-psd/breakfast-mockup-with-croissants_23-2147684823.jpg",
    giftName: "Mugs",
    giftPrice: "Half Price",
    occasion: [
      Occasion(occName: "Birthdays"),
      Occasion(occName: "Anniversary"),
      Occasion(occName: "Wedding"),
      Occasion(occName: "Congratulations"),
      Occasion(occName: "Thank You"),
      Occasion(occName: "Condolences"),
    ],
    variety: [
      Variety(
        varImage:
            "https://image.freepik.com/free-psd/mug-mockup-with-quote_23-2147837981.jpg",
        varName: "Star Mug",
        varPrice: "£20.99",
        varRating: "3.5",
      ),
      Variety(
        varImage:
            "https://image.freepik.com/free-psd/autumn-concept-with-woman-holding-mug_23-2147930919.jpg",
        varName: "Autumn Mug",
        varPrice: "£2.99",
        varRating: "4.5",
      ),
      Variety(
        varImage:
            "https://image.freepik.com/free-psd/mother-s-day-celebration-card-mug-with-mock-up_23-2148460784.jpg",
        varName: "Mummy Mug",
        varPrice: "£20.99",
        varRating: "3.5",
      ),
      Variety(
        varImage:
            "https://image.freepik.com/free-photo/red-cup-with-heart-valentine-s-day-concept_1150-6948.jpg",
        varName: "Heart Mug",
        varPrice: "£20.99",
        varRating: "3.5",
      ),
    ],
  ),
  Gifts(
    giftImage:
        "https://image.freepik.com/free-vector/modern-design-2021-calendar-template_1150-28507.jpg",
    giftName: "Calendars",
    giftPrice: "From £5",
    occasion: [
      Occasion(occName: "Birthdays"),
      Occasion(occName: "Anniversary"),
      Occasion(occName: "Wedding"),
      Occasion(occName: "Congratulations"),
      Occasion(occName: "Thank You"),
      Occasion(occName: "Condolences"),
    ],
    variety: [
      Variety(
        varImage:
            "https://image.freepik.com/free-psd/mug-mockup-with-quote_23-2147837981.jpg",
        varName: "Star Mug",
        varPrice: "£20.99",
        varRating: "3.5",
      ),
      Variety(
        varImage:
            "https://image.freepik.com/free-psd/autumn-concept-with-woman-holding-mug_23-2147930919.jpg",
        varName: "Autumn Mug",
        varPrice: "£20.99",
        varRating: "3.5",
      ),
      Variety(
        varImage:
            "https://image.freepik.com/free-psd/mother-s-day-celebration-card-mug-with-mock-up_23-2148460784.jpg",
        varName: "Mummy Mug",
        varPrice: "£20.99",
        varRating: "3.5",
      ),
      Variety(
        varImage:
            "https://image.freepik.com/free-photo/red-cup-with-heart-valentine-s-day-concept_1150-6948.jpg",
        varName: "Heart Mug",
        varPrice: "£20.99",
        varRating: "3.5",
      ),
    ],
  ),
  Gifts(
    giftImage:
        "https://image.freepik.com/free-photo/mobile-phone-with-blank-screen-pink-gift-box_23-2148102744.jpg",
    giftName: "Novelty & Gadgets",
    giftPrice: "From £9",
    occasion: [
      Occasion(occName: "Birthdays"),
      Occasion(occName: "Anniversary"),
      Occasion(occName: "Wedding"),
      Occasion(occName: "Congratulations"),
      Occasion(occName: "Thank You"),
      Occasion(occName: "Condolences"),
    ],
    variety: [
      Variety(
        varImage:
            "https://image.freepik.com/free-psd/mug-mockup-with-quote_23-2147837981.jpg",
        varName: "Star Mug",
        varPrice: "£20.99",
        varRating: "3.5",
      ),
      Variety(
        varImage:
            "https://image.freepik.com/free-psd/autumn-concept-with-woman-holding-mug_23-2147930919.jpg",
        varName: "Autumn Mug",
        varPrice: "£20.99",
        varRating: "3.5",
      ),
      Variety(
        varImage:
            "https://image.freepik.com/free-psd/mother-s-day-celebration-card-mug-with-mock-up_23-2148460784.jpg",
        varName: "Mummy Mug",
        varPrice: "£20.99",
        varRating: "3.5",
      ),
      Variety(
        varImage:
            "https://image.freepik.com/free-photo/red-cup-with-heart-valentine-s-day-concept_1150-6948.jpg",
        varName: "Heart Mug",
        varPrice: "£20.99",
        varRating: "3.5",
      ),
    ],
  ),
  Gifts(
    giftImage:
        "https://image.freepik.com/free-photo/composition-homely-festive-atmosphere_169016-1291.jpg",
    giftName: "Cushions",
    giftPrice: "From £10",
    occasion: [
      Occasion(occName: "Birthdays"),
      Occasion(occName: "Anniversary"),
      Occasion(occName: "Wedding"),
      Occasion(occName: "Congratulations"),
      Occasion(occName: "Thank You"),
      Occasion(occName: "Condolences"),
    ],
    variety: [
      Variety(
        varImage:
            "https://image.freepik.com/free-psd/mug-mockup-with-quote_23-2147837981.jpg",
        varName: "Star Mug",
      ),
      Variety(
        varImage:
            "https://image.freepik.com/free-psd/autumn-concept-with-woman-holding-mug_23-2147930919.jpg",
        varName: "Autumn Mug",
      ),
      Variety(
        varImage:
            "https://image.freepik.com/free-psd/mother-s-day-celebration-card-mug-with-mock-up_23-2148460784.jpg",
        varName: "Mummy Mug",
      ),
      Variety(
        varImage:
            "https://image.freepik.com/free-photo/red-cup-with-heart-valentine-s-day-concept_1150-6948.jpg",
        varName: "Heart Mug",
      ),
    ],
  ),
  Gifts(
    giftImage:
        "https://image.freepik.com/free-photo/cute-teddy-bear_144627-15248.jpg",
    giftName: "SoftToys",
    giftPrice: "From £1",
    occasion: [
      Occasion(occName: "Birthdays"),
      Occasion(occName: "Anniversary"),
      Occasion(occName: "Wedding"),
      Occasion(occName: "Congratulations"),
      Occasion(occName: "Thank You"),
      Occasion(occName: "Condolences"),
    ],
    variety: [
      Variety(
        varImage:
            "https://image.freepik.com/free-psd/mug-mockup-with-quote_23-2147837981.jpg",
        varName: "Star Mug",
      ),
      Variety(
        varImage:
            "https://image.freepik.com/free-psd/autumn-concept-with-woman-holding-mug_23-2147930919.jpg",
        varName: "Autumn Mug",
      ),
      Variety(
        varImage:
            "https://image.freepik.com/free-psd/mother-s-day-celebration-card-mug-with-mock-up_23-2148460784.jpg",
        varName: "Mummy Mug",
      ),
      Variety(
        varImage:
            "https://image.freepik.com/free-photo/red-cup-with-heart-valentine-s-day-concept_1150-6948.jpg",
        varName: "Heart Mug",
      ),
    ],
  ),
];

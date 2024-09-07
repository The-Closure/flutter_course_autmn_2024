void main(List<String> args) {
  // int counter = 5;
  // print(counter.runtimeType);

  // String name = "Ahmad";
  // print(name);

  // bool isFav = true;
  // print(isFav);

  // num age = 20;
  // print(age.runtimeType);

  // num degree = 5.7;
  // print(degree.runtimeType);

  // // What will print if init withoud declaration in var keyword
  // var anything;
  // anything = "";
  // print(anything.runtimeType);

  // var people = "Hello WOrld";
  // // ! We can't change type later with var keyword
  // // people = 50;

  // dynamic street = "Hello";
  // street = 300;
  // print(street);

  // int? temp;
  // print(temp.runtimeType);

  // Null empty;
  // print(empty);

  // // ! Bad state
  // const page;
  // page = 40;
  // print(page);

  // //  ? Good State
  // final secondPage;
  // secondPage = 60;
  // print(secondPage);

  List<String> names = ["Sara", "Reem", "Sundus"];
  print(names[2]);
  print(names.elementAt(1));

  Map<String, dynamic> marks = {
    "Name": "Hamed",
    "Age": 22,
    "Math 3": 59,
  };

  print(marks.keys.elementAt(2));

  List<Map<String, dynamic>> nestedMap = [
    {
      "id": 1,
      "name": "Persian",
      "origin": "Iran",
      "temperament": "Sweet, Gentle, Quiet",
      "colors": [
        "White",
        "Black",
        "Blue",
        "Cream",
      ],
      "description":
          "The Persian cat is a long-haired breed known for its luxurious coat and sweet personality. They are calm and affectionate cats that enjoy a relaxed indoor lifestyle.",
      "image": "https://fakeimg.pl/500x500/cc5500"
    }
  ];
  print(nestedMap[0]['colors'][2]);

  Map<String, List<Map<String, dynamic>>> products = {
    "products": [
      {
        "id": 1,
        "title": "Essence Mascara Lash Princess",
        "description":
            "The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
        "category": "beauty",
        "price": 9.99,
        "discountPercentage": 7.17,
        "rating": 4.94,
        "stock": 5,
        "tags": ["beauty", "mascara"],
        "brand": "Essence",
        "sku": "RCH45Q1A",
        "weight": 2,
        "dimensions": {"width": 23.17, "height": 14.43, "depth": 28.01},
        "warrantyInformation": "1 month warranty",
        "shippingInformation": "Ships in 1 month",
        "availabilityStatus": "Low Stock",
        "reviews": [
          {
            "rating": 2,
            "comment": "Very unhappy with my purchase!",
            "date": "2024-05-23T08:56:21.618Z",
            "reviewerName": "John Doe",
            "reviewerEmail": "john.doe@x.dummyjson.com"
          },
          {
            "rating": 2,
            "comment": "Not as described!",
            "date": "2024-05-23T08:56:21.618Z",
            "reviewerName": "Nolan Gonzalez",
            "reviewerEmail": "nolan.gonzalez@x.dummyjson.com"
          },
          {
            "rating": 5,
            "comment": "Very satisfied!",
            "date": "2024-05-23T08:56:21.618Z",
            "reviewerName": "Scarlett Wright",
            "reviewerEmail": "scarlett.wright@x.dummyjson.com"
          }
        ],
        "returnPolicy": "30 days return policy",
        "minimumOrderQuantity": 24,
        "meta": {
          "createdAt": "2024-05-23T08:56:21.618Z",
          "updatedAt": "2024-05-23T08:56:21.618Z",
          "barcode": "9164035109868",
          "qrCode": "https://assets.dummyjson.com/public/qr-code.png"
        },
        "images": [
          "https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/1.png"
        ],
        "thumbnail":
            "https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/thumbnail.png"
      }
    ]
  };

  print(products["products"]![0]["reviews"][0]["reviewerName"]);

  Null addNumber({int x = 4}) {
    print(x);
  }

  addNumber();
}

class DealsProvider {
  final List<Map<String, Object>> _deals = [
    {
      "name": "Avocado",
      "img": "assets/images/deals/deal1.png",
      "price": 6.7,
      "isFavorite": true,
    },
    {
      "name": "Brocoli",
      "img": "assets/images/deals/deal2.png",
      "price": 8.7,
      "isFavorite": true,
    },
    {
      "name": "Tomatoes",
      "img": "assets/images/deals/deal3.png",
      "price": 4.9,
      "isFavorite": false,
    },
    {
      "name": "Grapes",
      "img": "assets/images/deals/deal4.png",
      "price": 7.2,
      "isFavorite": false,
    },
    {
      "name": "Blueberry",
      "img": "assets/images/deals/deal5.png",
      "price": 5.2,
      "isFavorite": false,
    },
    {
      "name": "Orange",
      "img": "assets/images/deals/deal6.png",
      "price": 3.2,
      "isFavorite": false,
    },
    {
      "name": "Ananas",
      "img": "assets/images/deals/deal7.png",
      "price": 13.2,
      "isFavorite": true,
    },
    {
      "name": "Grapes",
      "img": "assets/images/deals/deal8.png",
      "price": 7.2,
      "isFavorite": false,
    },
    {
      "name": "Mixed",
      "img": "assets/images/deals/deal9.png",
      "price": 9.99,
      "isFavorite": true,
    },
    {
      "name": "Starwberry",
      "img": "assets/images/deals/deal10.png",
      "price": 8.3,
      "isFavorite": false,
    },
    {
      "name": "Lemon",
      "img": "assets/images/deals/deal11.png",
      "price": 2.3,
      "isFavorite": false,
    },
    {
      "name": "Apple",
      "img": "assets/images/deals/deal12.png",
      "price": 4.3,
      "isFavorite": false,
    },
    {
      "name": "Mange",
      "img": "assets/images/deals/deal13.png",
      "price": 8.7,
      "isFavorite": true,
    },
    {
      "name": "Banana",
      "img": "assets/images/deals/deal14.png",
      "price": 7.9,
      "isFavorite": false,
    },
  ];

  get deals {
    return [..._deals];
  }

  List<Map<String, Object>> getAllDeals() {
    return deals;
  }
}

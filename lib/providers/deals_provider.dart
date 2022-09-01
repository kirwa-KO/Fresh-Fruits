
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
      "name": "Avocado",
      "img": "assets/images/deals/deal1.png",
      "price": 6.7,
      "isFavorite": false,
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
      "isFavorite": true,
    },
    {
      "name": "Grapes",
      "img": "assets/images/deals/deal4.png",
      "price": 7.2,
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

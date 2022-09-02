class OrdersProvider {
  final List<Map<String, Object>> _orders = [
    {
      "category": "FRUITS",
      "name": "Banana",
      "img": "assets/images/orders/order1.png",
      "price": 7.2,
      "quantity": 3,
    },
    {
      "category": "VEGETABLES",
      "name": "Broccoli",
      "img": "assets/images/orders/order2.png",
      "price": 6.3,
      "quantity": 1,
    },
    {
      "category": "FRUITS",
      "name": "Grapes",
      "img": "assets/images/orders/order3.png",
      "price": 5.7,
      "quantity": 2,
    },
    {
      "category": "MUSHROOM",
      "name": "Oyster Mushroom",
      "img": "assets/images/orders/order4.png",
      "price": 2.7,
      "quantity": 1,
    },
    {
      "category": "FRUITS",
      "name": "Banana",
      "img": "assets/images/orders/order1.png",
      "price": 7.2,
      "quantity": 3,
    },
    {
      "category": "VEGETABLES",
      "name": "Broccoli",
      "img": "assets/images/orders/order2.png",
      "price": 6.3,
      "quantity": 1,
    },
    {
      "category": "FRUITS",
      "name": "Grapes",
      "img": "assets/images/orders/order3.png",
      "price": 5.7,
      "quantity": 2,
    },
    {
      "category": "MUSHROOM",
      "name": "Oyster Mushroom",
      "img": "assets/images/orders/order4.png",
      "price": 2.7,
      "quantity": 1,
    },
  ];

  get orders {
    return [..._orders];
  }

  List<Map<String, Object>> getAllorders() {
    return orders;
  }
}

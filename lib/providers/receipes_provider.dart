class ReceipesProvider {
  final List<Map<String, String>> _receipes = [
    {
      "name": "Recomended Recipe Today",
      "img": "assets/images/receipes/receipe1.png"
    },
    {
      "name": "Fresh Fruits Delivery",
      "img": "assets/images/receipes/receipe2.png"
    },
    {
      "name": "Recomended Recipe Today",
      "img": "assets/images/receipes/receipe1.png"
    },
    {
      "name": "Fresh Fruits Delivery",
      "img": "assets/images/receipes/receipe2.png"
    },
    {
      "name": "Recomended Recipe Today",
      "img": "assets/images/receipes/receipe1.png"
    },
    {
      "name": "Fresh Fruits Delivery",
      "img": "assets/images/receipes/receipe2.png"
    },
  ];

  get receipes {
    return [..._receipes];
  }

   List<Map<String, String>> getAllReceipes() {
    return receipes;
  }
}

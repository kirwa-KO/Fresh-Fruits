import 'package:flutter/material.dart';
import 'package:freshfruits/providers/order_provider.dart';
import 'package:freshfruits/styles/colors.dart';
import 'package:freshfruits/widgets/ui/quantity_control.dart';

class ShoppingCartOrdersList extends StatelessWidget {
  late List<Map<String, Object>> ordersList;

  ShoppingCartOrdersList({super.key}) {
    final ordersListData = OrdersProvider();
    ordersList = ordersListData.getAllorders();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
          itemBuilder: (ctx, index) => Dismissible(
              key: Key(index.toString()),
              onDismissed: (direction) {
                // Then show a snackbar.
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.black,
                    content: Text(
                        'The Item ${ordersList[index]['name']} is removed')));
              },
              direction: DismissDirection.endToStart,
              background: Container(
                color: Colors.black,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.all(20),
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              confirmDismiss: (direction) {
                return showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                          title: const Text("Are you sure ?"),
                          content: const Text(
                              "Do you want to remove the item from the cart"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop(false);
                                },
                                child: const Text("NO")),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop(true);
                                },
                                child: const Text("YES")),
                          ],
                        ));
              },
              child: OrderCard(
                orderImage: ordersList[index]['img'] as String,
                orderName: ordersList[index]['name'] as String,
                orderCategory: ordersList[index]['category'] as String,
                orderQuantity: ordersList[index]['quantity'] as int,
                orderPrice: ordersList[index]['price'] as double,
              )),
          itemCount: ordersList.length,
        ))
      ],
    );
  }
}

class OrderCard extends StatelessWidget {
  final String orderImage;
  final String orderName;
  final String orderCategory;
  final int orderQuantity;
  final double orderPrice;

  const OrderCard({
    super.key,
    required this.orderImage,
    required this.orderName,
    required this.orderCategory,
    required this.orderQuantity,
    required this.orderPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
      height: 113,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              OrderImageAndPrice(
                  orderImage: orderImage, orderPrice: orderPrice),
              const SizedBox(width: 20),
              OrderTotalPriceAndNameAndCategory(
                  orderCategory: orderCategory,
                  orderName: orderName,
                  orderPrice: orderPrice,
                  orderQuantity: orderQuantity),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              QuantityControl(
                quantity: orderQuantity,
                iconColor: grayColor,
              )
            ],
          )
        ],
      ),
    );
  }
}

class OrderImageAndPrice extends StatelessWidget {
  final String orderImage;
  final double orderPrice;

  const OrderImageAndPrice(
      {super.key, required this.orderImage, required this.orderPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 93,
      // height: 113,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(orderImage),
          ),
          borderRadius: BorderRadius.circular(18)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18), color: yellowColor),
            child: Center(
              child: Text(
                "\$${orderPrice.toString()}",
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class OrderTotalPriceAndNameAndCategory extends StatelessWidget {
  final String orderName;
  final String orderCategory;
  final int orderQuantity;
  final double orderPrice;

  const OrderTotalPriceAndNameAndCategory({
    super.key,
    required this.orderName,
    required this.orderCategory,
    required this.orderPrice,
    required this.orderQuantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                orderCategory,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54),
              ),
              Text(
                orderName,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ],
          ),
          Text(
            '\$${(orderPrice * orderQuantity).toString()}',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: mainColor,
            ),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}

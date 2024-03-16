void main() {

  // Fruits list
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0},
  ];

  // Printing original fruit details
  print("Details Without Discount:");
  fruitDetails(fruits);

  // Apply 10% discount
  applyDiscount(fruits, 10);

  // Display fruit details after discount
  print("\n\nDetails With 10% Discount:");
  fruitDetails(fruits);
}

// Display fruit details
void fruitDetails(List<Map<String, dynamic>> fruits) {

  for (var fruit in fruits) {
    print(
        "Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
  }

}

// Apply discount to fruit prices
void applyDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {

  for (var fruit in fruits) {
    double price = fruit['price'];
    double discountAmount = price * (discountPercentage / 100);
    fruit['price'] = (price - discountAmount).toStringAsFixed(2);
  }

}
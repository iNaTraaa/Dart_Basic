import 'dart:math';

void main() {
  // Số nguyên
  int a = 10;
  // Số thực
  double b = 5.5;
  // Số nguyên và số thực
  num c = 15;

  // Chuyển chuỗi sang số nguyên
  var one = int.parse("1");
  print(one == 1?"true":"false"); // Nếu one = 1 thì in ra true ngược lại in ra false

  // Chuyển chuỗi sang số thực
  var two = double.parse('2.0');
  print(two == 2.0); // Nếu two = 2.0 thì in ra true ngược lại in ra false

  // Số nguyên -> Chuỗi
  String oneAsString = 1.toString(); // Chuyển số nguyên 1 thành chuỗi "1"
  print(oneAsString); // In ra "1"

  // Số thực -> Chuỗi
  String piAsString = 3.14324234.toStringAsFixed(2); // Chuyển số thực 3.14324234 thành chuỗi "3.14" (lấy 2 số thập phân)
  print(piAsString); // In ra "3.14"
}

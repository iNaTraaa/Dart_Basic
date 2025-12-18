void main() {
  var a = 10;
  print(a);


// ??= sẽ gán giá trị bên phải cho biến bên trái nếu biến bên trái đang có giá trị null
  int? b;
  b ??= 5; // b đang là null nên sẽ được gán giá trị 5
  print(b); // In ra 5
}

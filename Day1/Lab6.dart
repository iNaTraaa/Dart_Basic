void main() {
  //Phép cộng
  int a = 5;
  int b = 10;
  int d = 5 + 3;

  // Phép chia lấy phần nguyên
  int c = b ~/ a;

  // Phép gán và tính toán kết hợp
  a ~/= 3; // Tương đương a = a ~/ 3;

  // Tiền tố
  c = ++b; // b được tăng lên 1 trước rồi mới gán cho c
  c = --a; // a được giảm đi 1 trước rồi mới gán cho c

  //Hậu tố
  c = b++; // Gán giá trị b cho c rồi mới tăng b lên 1
  c = a--; // Gán giá trị a cho c rồi mới giảm a đi 1
}

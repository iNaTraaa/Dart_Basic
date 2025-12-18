// import thư viện
import 'dart:io';// thư viện nhập xuất cơ bản

void main(){
  // Nhập dữ liệu từ bàn phím
  stdout.write("Nhập tên của bạn: ");// Xuất dữ liệu ra
  String name = stdin.readLineSync()!; // Đọc dữ liệu từ bàn phím | ! có nghĩa là chắc chắn không null
  stdout.write("Nhập tuổi của bạn:" );
  int age = int.parse(stdin.readLineSync()!); // Chuyển đổi chuỗi sang số nguyên
  print("Xin chào $name, bạn $age tuổi.");
}
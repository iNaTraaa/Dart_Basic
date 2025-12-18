// Chuỗi là 1 tập hợp ký tự UTF-16
void main() {
  var str1 = 'Na Tra';
  var str2 = "Tây Du Ký";

  // Chèn giá trị biểu thức , biến vào trong chuỗi : ${...}
  double pointMath = 9.5;
  double pointPhysic = 8.5;
  var s3 =
      'Xin chào $str1, trong $str2, điểm trung bình của mày là: ${(pointPhysic + pointMath) / 2}';
  print(s3);

  // Tạo ra chuỗi nằm ở nhiều dòng
  var str4 = '''
   Dòng 1
      Dòng 2
        Dòng 3
          ''';
  print(str4);

  // raw : chuỗi thô, không xử lý ký tự đặc biệt
  var str5 = 'Chuỗi \n không có xuống dòng ';
  print(str5);
}

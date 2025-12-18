/*
Định nghĩa list:
- List là tập hợp các phần tử có thứ tự và có thể trùng lặp
- Các chỉ số phần tử được truy cập bẳng chỉ số index từ 0
- Kích thước có thể thay đổi được
*/
void main() {
  List<String> list1 = ['a', 'b', 'c']; // Tạo list trực tiếp
  var list2 = [1, 2, 3, 4]; // Sử dụng var tự nhận biết kiểu dữ liệu
  List<String> list3 = []; // List rỗng
  var list4 = List<int>.filled(3, 0); // List có kích thước cố định có 3 số 0
  print(list4);

  // Thêm phần tử
  list1.add('d'); // Thêm 1 phần tử
  list1.addAll(['a', 'c']); // Thêm nhiều phần tử
  list1.insert(2, 'e'); // Chèn vào vị trí số 2 giá trị 'e'
  list1.insertAll(2, ['x', 'y']); // Chèn vào vị trí số 2 giá trị là 'x' và 'y'

  // Xóa phần tử
  list1.remove(
    'a',
  ); // Xóa phần tử có giá trị 'a' (chỉ xóa 1 lần giá trị đầu tiên khi gặp)
  list1.removeAt(1); // Xóa phần tử tại vị trí 1
  list1.removeLast(); // Xóa phần tử tại vị trí cuối cùng
  list1.removeWhere((e) => e == 'b'); // Xóa theo điều kiện
  list1.clear(); // Xóa tất cả các phần tử

  // Truy cập phần tử
  print(list2[0]); // Lấy phần tử tại vị trí 0
  print(list2.first); // Lấy phần tử đâu tiên trong list
  print(list2.last); // Lấy phần tử cuối cùng trong list
  print(list2.length); // Lấy độ dài của list

  // Kiểm tra
  print(list2.isEmpty); // Kiểm tra list 2 có rỗng hay không
  print(
    'List3: ${list3.isNotEmpty ? 'Không rỗng' : 'Rỗng'}',
  ); // Nếu list 3 không rỗng thì in ra Không rỗng còn nếu rỗng thì in ra rỗng
  print(
    list4.contains('1'),
  ); // List số 4 có chứa số 1 hay không? Trả lời là true|false
  print(list4.indexOf(0)); // Vị trí trước phần tử 0
  print(list4.lastIndexOf(0)); // Vị trí sau phần tử 0

  // Biến đổi
  list4 = [2, 1, 4, 3, 7, 5];
  print(list4);
  list4.sort(); // Sắp xếp tăng dần
  print(list4);
  list4.reversed; // Đảo ngược
  print(list4.reversed);
  list4 = list4.reversed.toList(); // Đảo ngược
  print(list4);

  // Cắt và nối list
  var subList = list4.sublist(1, 3); // Cắt 1 sublist từ 1 đến < 3 (>=1 & <3)
  print(subList);
  var str_join = list4.join(
    ',',
  ); //  Biến list thành chuỗi và cách nhau bởi dấu ','
  print(str_join);

  // Duyệt các phần tử bên trong list
  list4.forEach((element) {
    // Lấy cấc phần tử trong list
    print(element);
  });
}

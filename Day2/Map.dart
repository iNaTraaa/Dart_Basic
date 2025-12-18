/*
Định nghĩa 
- Map là cấu trúc dữ liệu lữu trữ dạng key-value
- Mỗi key là duy nhất
- Value có thể trùng lặp
- Key và value có thể là bất kỳ kiểu dữ liệu nào
*/

void main() {
  // Cách khái báo
  Map<String, dynamic> user1 = {'name': 'keke', 'age': 20, 'isStdent': true};
  print(user1);

  // Thêm và cập nhật
  user1['email'] = 'name@gmail.com'; // Thêm entry mới
  user1['age'] = 21; // Cập nhật value
  user1.putIfAbsent(
    'phone',
    () => '012310231',
  ); // Thêm nếu key chưa tồn tại(Nếu số đt chưa tồn tại thì thêm còn có thì không cần thêm)
  user1.addAll({'address': 'HCM', 'Giới tính': 'Nam'}); // Thêm nhiều entry

  // Xóa
  user1.remove('age');
  user1.removeWhere((key, value) => value == null); // value null thì xóa hết
  user1.clear(); // Xóa tất cả

  // Truy cập
  print(user1['name']); // Lấy value theo key
  print(user1.length); // Số lượng entry

  // Lấy value an toàn với giá trị mặc định
  String phone = user1['phone'] ?? 'không có số điện thoại';

  print(user1.isEmpty); // Kiểm tra rỗng
  print(user1.isNotEmpty); // Kiểm tra không rỗng
  print(user1.containsKey('name')); // Kiểm tra tồn tại key name
  print(user1.containsValue('Nam')); // Kiểm tra có tồn tại value Nam

  // Lấy danh sách
  print(user1.keys); // Lấy tất cả các key
  print(user1.values); // Lấy tất cả các value
  print(user1.entries); // Lấy tất cả các entries

  // Duyệt map:
  // Duyệt theo key-value
  user1.forEach((key, value) {
    print('$key , $value');
  });

  // Duyệt qua entries
  for (var entry in user1.entries) {
    print('${entry.key} : ${entry.value}');
  }

  // Biến đổi
  // map Key thành chữ hoa
  var upperMap = user1.map((key, value) => MapEntry(key.toUpperCase(), value));

  // Lọc map
  var filterdMap = user1.entries
      .where((entry) => entry.value is String)
      .toList();
}

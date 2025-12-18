/*
Định nghĩa:
- Set là tập hợp các phần tử không trùng lặp
- Không có thứ tự xác định
- Mỗi phần tử chỉ xuất hiện 1 lần 
*/

void main() {
  // Cách khai báo
  Set<String> set1 = {'a', 'b', 'c'}; // Trực tiếp
  var set2 = <int>{1, 2, 3}; // Sử dụng var
  Set<String> set3 = Set(); // Set rỗng
  var set4 = Set<int>.from([1, 2, 2, 3]); // Từ list (Loại bỏ trùng)

  var set5 = {1, 2, 3, 4, 5};
  var set6 = {2, 4, 5};

  var union = set5.union(set6); // Hợp: {1, 2, 3, 4, 5}
  print('Hợp: $union');
  var intersection = set5.intersection(set6); // Giao {2, 4, 5}
  print('Giao $intersection');
  var difference = set5.difference(set6); // Hiệu: {1, 3}
  print('Hiệu: $difference');

  // Biến đổi
  var list = set1.toList(); // Chuyển thành list
  var newSet = Set.from(set1); // Tạo set mới

  // Lọc và ánh xạ
  var filtered = set1.where(
    (e) => e.startsWith('a'),
  ); // Lấy ra các phần tử bắt đầu bằng chữ cái 'a'
  var mapped = set1.map(
    (e) => e.toLowerCase(),
  ); // Lấy ra các phần tử và chuyển thành chữ thường

  // Lấy ra từng phần tử trong set
  set1.forEach((element) {
    print(element);
  });

  // Ví dụ
  // Quản lý danh sách
  Set<String> friends = {'Na Tra', 'keke', 'hihi'};
  // Thêm bạn
  friends.add('huhu');
  // Kiểm tra
  bool isFriends = friends.contains('keke');
  print(isFriends);
  // Đề xuất bạn bè
  Set<String> suggestions = {'hichic', 'hyhy', 'keke'};
  var newFriends = suggestions.difference(friends); // Chỉ lấy phần tử không bị trùng
}

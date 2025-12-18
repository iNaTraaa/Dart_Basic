void main() {
  Object obj = "Na Tra";
  // Kiểm tra obj có phải là kiểu String không
  if (obj is String) {
    print("Obj là một chuỗi String");
  }
  // Kiểm tra obj không phải là kiểu String
  if (obj is! int) {
    print("Obj không phải là một chuỗi số nguyên");
  }

  // Ép kiểu
  String str = obj as String;
  print(str.toUpperCase());
}

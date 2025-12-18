/*
exp 1 ? exp 2 : exp 3
Nếu exp 1 đúng thì kết quả là exp 2, ngược lại kết quả là exp 3

exp1 ?? exp2
Nếu exp1 khác null thì kết quả là exp1, ngược lại kết quả là exp2

*/

void main() {
  var check = (100 % 2 == 0) ? "100 là Số chẵn" : "100 là Số lẻ";
  print(check);

  var x = 100;
  // var x = null; -> y = 50
  var y = x ?? 50;
  print(y);

  int? z; // z đang là null -> y = 30
  y = z ?? 30;
  print(y);
}

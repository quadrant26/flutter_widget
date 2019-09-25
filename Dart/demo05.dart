void main() {
  var a;
  var b = a??10;
  print(b);

  var c = 22;
  var d = c??23;
  print(d);

  print(c??=d);
}
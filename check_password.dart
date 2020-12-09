void main() {
  
  print(checkPassword("12A")); // f
  print(checkPassword("12ABcD_#")); // t
  print(checkPassword("_%#12ABcD")); // t
  print(checkPassword("12ABcD_#123456")); // f 13
  
}


String checkPassword(String password) {
  
  RegExp exp = new RegExp(
      r'^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[!@#\$%\^&\*_-]).{8,12}$');

  return exp.hasMatch(password)
      ? 
    "Successful Password.\n"
      : 
    "Password does not match specifications: \n 1- Contains Capital and Small letters \n 2- Contains Symbols\n 3- Length between 8 up to 12.\n";
  
}

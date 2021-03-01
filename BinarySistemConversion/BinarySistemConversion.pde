
void setup () {
  String str = "Hola mundo!";
  
  // for (init; condition; update) {...}
  for (int i = str.length() - 1; i >= 0; i--) {
    // println(str.charAt(i));
  }
  
  int result = binaryToDecimal("11111111");
  println(result);
  
  println(decimalToBinary(44));
}

// Funcion que convierte bin -> dec
int binaryToDecimal (String binaryStr) {
  int decimal = 0;
  
  for (int i = binaryStr.length() - 1; i >= 0; i--) {
    // Si no se hace esto, se va a convertir en ASCII
    int bit = int(str(binaryStr.charAt(i)));
    int posBit = binaryStr.length() - 1 - i;
    
    decimal += bit * pow(2, posBit);
  }

  return decimal;
}

// Function que convierte dec -> bin
String decimalToBinary (int decimal) {
  String binary = "";
  while (decimal > 0) {
    int bit = decimal % 2; // 0 o 1
    binary = bit + binary; 
    decimal = decimal / 2;
  }
  
  return binary;
}

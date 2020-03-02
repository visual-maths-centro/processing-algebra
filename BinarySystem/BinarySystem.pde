/**
 * Algebra. Sistemas de numeros.
 * Matematicas Visuales 2020-1 
 *
 * Este sketch muestra como convertir de sistema binario a decimal.
 */

void setup () {
  int x = binaryToDecimal("1000001");
  println(x);
  
  String binary = decimalToBinary(52);
  println(binary);
}

/**
 * Funcion que convierte de binario a decimal.
 *
 * @param binary - El numero binario en una cadena
 * @return int   - El numero en decimal
 */
int binaryToDecimal (String binary) {
  
  int decimal = 0;
  int pow = 0;
  
  for (int i = binary.length() - 1; i >= 0; i--) {
    int bit = int(binary.charAt(i) + "");
    decimal += bit * pow(2, pow); // bit * 2^pow
    pow++;
  }
  
  return decimal;
}

/**
 * Funcion que convierte de decimal a binario.
 *
 * @param decimal - El numero en decimal como un entero
 * @return String - El numero binario en una cadena
 */
String decimalToBinary (int decimal) {
  String binary = "";
  int x = decimal;
  
  while (x > 0) {
    int bit = x % 2;
    binary = bit + binary;
    x /= 2; // x ?= a => x = x ? a
  }
  
  return binary;
}

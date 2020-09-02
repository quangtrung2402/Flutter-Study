int inputNumber = 200;
bool isPositivePrime(int checkingNumber) {
  if (checkingNumber < 1) return false;
  if (checkingNumber < 4) return true;
  if (0 == checkingNumber % 2) return false;
  int threshold = checkingNumber / 2;
  for (int i = 3; i < threshold; i += 2) {
    if (0 == (checkingNumber % i)) return false;
  }
  return true;
}

void main() {  for (int i = 1; i < inputNumber; ++i) {    if (isPositivePrime(i)) print(i);  }}
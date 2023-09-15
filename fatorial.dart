void main() {
  for (int i = 1; i <= 10; i++) {
    print("$i! Fatorial = ${calculaFatorial(i)}");
    print("$i elevado a $i eh: ${calculaPotencia(base: i, expoente: i)}");
  }
}

int calculaFatorial(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n * calculaFatorial(n - 1);
  }
}

int calculaPotencia({required int base, int expoente = 2}) {
  if (expoente == 0) {
    return 1;
  }
  if (expoente == 1) {
    return base;
  }
  return base * calculaPotencia(base: base, expoente: expoente - 1);
}

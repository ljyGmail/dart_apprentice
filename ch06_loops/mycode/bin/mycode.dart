void main() {
  // # While Loops
  var sum = 1;
  while (sum < 10) {
    sum += 4;
    print('sum: $sum');
  }

  // ## Do-While Loops
  sum = 1;
  do {
    sum += 4;
    print('sum: $sum');
  } while (sum < 10);

  // ## Comparing While and Do-While Loops
  sum = (1 + 3 - 2 * 4 + 8);
  while (sum < 10) {
    sum += (1 + 3 - 2 * 4 + 8);
  }
  print('while loop sum: $sum');

  sum = 0;
  do {
    sum += (1 + 3 - 2 * 4 + 8);
  } while (sum < 10);
  print('do-while loop sum: $sum');

  // ## Breaking Out of a Loop
  sum = 1;
  while (true) {
    sum += 4;
    print('sum: $sum');
    if (sum > 10) {
      break;
    }
  }

  // # For Loops
  for (var i = 0; i < 5; i++) {
    print('i: $i');
  }

  // ## The Continue Keyword
  for (var i = 0; i < 5; i++) {
    if (i == 2) {
      continue;
    }
    print('i: $i');
  }

  // ## More For Loops
  /*
  for-in loops
  for-each loops
  */
}

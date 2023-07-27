const global = 'Hello, world';
void main() {
  // # Making Comparisons
  // ## Boolean Values
  // const bool yes = true;
  // const bool no = false;

  // type inference
  const yes = true;
  const no = false;

  // ## Boolean Operators
  print('');

  // ### Testing Equality
  // const doesOneEqualTwo = (1 == 2);
  const doesOneEqualTwo = 1 == 2;
  print('doesOneEqualTwo: $doesOneEqualTwo');

  // ### Testing Inequality
  const doesOneNotEqualTwo = (1 != 2);
  print('doesOneNotEqualTwo: $doesOneNotEqualTwo');

  const alsoTrue = !(1 == 2);
  print('alsoTrue: $alsoTrue');

  // ### Testing Greater and Less Than
  const isOneGreaterThanTwo = (1 > 2);
  const isOneLessThanTwo = (1 < 2);
  print('isOneGreaterThanTwo: $isOneGreaterThanTwo');
  print('isOneLessThanTwo: $isOneLessThanTwo');

  print('1 <= 2: ${1 <= 2}');
  print('2 <= 2: ${2 <= 2}');
  print('2 >= 1: ${2 >= 1}');
  print('2 >= 2: ${2 >= 2}');

  // ## Boolean Logic
  // ### AND Operator
  const isSunny = true;
  const isFinished = true;
  const willGoCycling = isSunny && isFinished;
  print('willGoCycling: $willGoCycling');

  // ### OR Operator
  const willTravelToAustralia = true;
  const canFindPhoto = false;
  const canDrawPlatypus = willTravelToAustralia || canFindPhoto;
  print('canDrawPlatypus: $canDrawPlatypus');

  // ### Operator Precedence
  const andTrue = 1 < 2 && 4 > 3;
  const andFalse = 1 < 2 && 3 > 4;
  const orTrue = 1 < 2 || 3 > 4;
  const orFalse = 1 == 2 || 3 == 4;

  print('3 > 4 && 1 < 2 || 1 < 4: ${3 > 4 && 1 < 2 || 1 < 4}');

  // ### Overriding Precedence With Parentheses
  print('3 > 4 && (1 < 2 || 1 < 4): ${3 > 4 && (1 < 2 || 1 < 4)}');
  print('(3 > 4 && 1 < 2) || 1 < 4: ${(3 > 4 && 1 < 2) || 1 < 4}');

  // ## String Equality
  const guess = 'dog';
  const guessEqualsCat = guess == 'cat';
  print('guessEqualsCat: $guessEqualsCat');

  // # The if Statement
  if (2 > 1) {
    print('Yes, 2 is greater than 1.');
  }

  // ## The else Clause
  const animal = 'Fox';
  if (animal == 'Cat' || animal == 'Dog') {
    print('Animal is a house pet.');
  } else {
    print('Animal is not a house pet.');
  }

  // ## Else-if Chains
  const trafficLight = 'yellow';
  var command = '';
  if (trafficLight == 'red') {
    command = 'Stop';
  } else if (trafficLight == 'yellow') {
    command = 'Slow down';
  } else if (trafficLight == 'green') {
    command = 'Go';
  } else {
    command = 'INVALID COLOR!';
  }
  print('command: $command');

  // ## Variable Scope
  const local = 'Hello, main';

  if (2 > 1) {
    const insideIf = 'Hello, anybody?';

    print('global: $global');
    print('local: $local');
    print('insideIf: $insideIf');
  }

  print('global: $global');
  print('local: $local');
  // print('insideIf: $insideIf'); // Not allowed!

  // ## The Ternary Conditional Operator
  const score = 83;

  /*
  String message;
  if (score >= 60) {
    message = 'You passed';
  } else {
    message = 'You failed';
  }
  print('message: $message');
  */
  const message = (score >= 60) ? 'You passed' : 'You failed';
  print('message: $message');

  // # Switch Statements
  // ## Replacing Else-If Chains
  const number = 3;
  if (number == 0) {
    print('zero');
  } else if (number == 1) {
    print('one');
  } else if (number == 2) {
    print('two');
  } else if (number == 3) {
    print('three');
  } else if (number == 4) {
    print('four');
  } else {
    print('something else');
  }

  switch (number) {
    case 0:
      print('zero');
      break;
    case 1:
      print('one');
      break;
    case 2:
      print('two');
      break;
    case 3:
      print('three');
      break;
    case 4:
      print('four');
      break;
    default:
      print('something else');
  }

  // ## Switching on Strings
  const weather = 'cloudy';
  switch (weather) {
    case 'sunny':
      print('Put on sunscreen.');
      break;
    case 'snowy':
      print('Get your skis.');
      break;
    case 'cloudy':
    case 'rainy':
      print('Bring an umbrella.');
      break;
    default:
      print("I'm not familiar with that weather.");
  }

  // ## Enumerated Types
  // ### Naming Enums

  // ## Switching on Enums
  const weatherToday = Weather.cloudy;
  switch (weatherToday) {
    case Weather.sunny:
      print('Put on sunscreen.');
      break;
    case Weather.snowy:
      print('Get your skis.');
      break;
    case Weather.cloudy:
    case Weather.rainy:
      print('Bring an umbrella.');
      break;
  }

  // ### Enum Values and Indexes
  print('weatherToday: $weatherToday');
  print('weatherToday.index: ${weatherToday.index}');

  // ### Avoiding the Overuse of Switch Statements
}

enum Weather {
  sunny,
  snowy,
  cloudy,
  rainy,
}

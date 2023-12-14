abstract class Animal {
  String get species;

  void move();
  void eat();
}

class Dog extends Animal {
  @override
  String get species => 'Dog';

  @override
  void move() {
    print('Running $species');
  }

  @override
  void eat() {
    // TODO: implement eat
  }
}

class Fish extends Animal {
  @override
  String get species => 'Fish';

  @override
  void move() {
    print('Swimming $species');
  }

  @override
  void eat() {
    // TODO: implement eat
  }
}

void main() {
  final dog = Dog();
  dog.move();

  final fish = Fish();
  fish.move();
}
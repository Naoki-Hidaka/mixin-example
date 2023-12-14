abstract class Animal {
  abstract final String species;

  void move();
  void eat();
}

mixin RunnableAnimal {
  late final Animal _animal;

  void init(Animal animal) {
    _animal = animal;
  }

  void move() {
    print('Running ${_animal.species}');
  }
}

mixin SwimableAnimal {
  late final Animal _animal;

  void init(Animal animal) {
    _animal = animal;
  }

  void move() {
    print('Swimming ${_animal.species}');
  }
}

mixin EtableAnimal {
  late final Animal _animal;

  void init(Animal animal) {
    _animal = animal;
  }

  void eat() {
    print('Eating ${_animal.species}');
  }

}

class Dog with RunnableAnimal, EtableAnimal implements Animal {
  Dog() {
    init(this);
  }

  @override
  String get species => 'Dog';
}

class Fish with SwimableAnimal, EtableAnimal implements Animal {
  Fish() {
    init(this);
  }

  @override
  String get species => 'Fish';
}

void main() {
  final dog = Dog();
  dog.move();

  final fish = Fish();
  fish.move();
}
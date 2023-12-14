abstract class Animal {
  String get species;

  void move();
  void eat();
  void evolve();
}

mixin RunnableAnimal on Animal {

  @override
  void move() {
    print('Running $species');
  }
}

mixin SwimmableAnimal on Animal {

  @override
  void move() {
    print('Swimming $species');
  }
}

mixin EtableAnimal on Animal {
  @override
  void eat() {
    print('Eating $species');
  }
}

mixin EvolutionAnimal on Animal {
  @override
  void evolve() {
    print('Evolving $species');
  }
}

mixin NonEvolvableAnimal on Animal {
  @override
  void evolve() {
    print('NonEvolving $species');
  }
}

class Dog extends Animal with RunnableAnimal, EtableAnimal, NonEvolvableAnimal {
  @override
  String get species => 'Dog';
}

class Fish extends Animal with SwimmableAnimal, EtableAnimal, EvolutionAnimal {
  @override
  String get species => 'Fish';
}

void main() {
  final dog = Dog();
  dog.move();
  dog.eat();
  dog.evolve();

  final fish = Fish();
  fish.move();
  fish.eat();
  fish.evolve();
}
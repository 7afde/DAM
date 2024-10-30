mixin Animal {
  void breathe() => print('Breathing');
  void eat() => print('Eating');
}

mixin Bird on Animal {
  void fly() => print('Flying');
}

mixin Fish on Animal {
  void swim() => print('Swimming');
}

mixin Mammal on Animal {
  void walk() => print('Walking');
}

class Dog with Animal, Mammal {
  void identify() => print("I'm a dog");
}

class Whale with Animal, Mammal, Fish {
  void identify() => print("I'm a whale");
}

class Snake with Animal {
  void slither() => print('Slithering');
  void identify() => print("I'm a snake");
}

class Eagle with Animal, Bird {
  void identify() => print("I'm an eagle");
}

void main() {
  Dog dog = Dog();
  Whale whale = Whale();
  Snake snake = Snake();
  Eagle eagle = Eagle();

  print('\nDog:');
  dog.breathe();
  dog.eat();
  dog.walk();
  dog.identify();

  print('\nWhale:');
  whale.breathe();
  whale.eat();
  whale.walk();
  whale.swim();
  whale.identify();

  print('\nSnake:');
  snake.breathe();
  snake.eat();
  snake.slither();
  snake.identify();

  print('\nEagle:');
  eagle.breathe();
  eagle.eat();
  eagle.fly();
  eagle.identify();
}

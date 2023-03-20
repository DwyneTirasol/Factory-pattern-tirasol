abstract class Material {
  void display();
}

class Material1 implements Material {
  @override
  void display() {
    print('Material1');
  }
}

class Material2 implements Material {
  @override
  void display() {
    print('Material2');
  }
}

class MaterialFactory {
  static Material createProduct(String type) {
    if (type == '1') {
      return Material1();
    } else if (type == '2') {
      return Material2();
    } else {
      throw Exception('This type is invalid');
    }
  }
}

// Usage example
void main() {
  Material product1 = MaterialFactory.createProduct('1');
  product1.display();

  Material product2 = MaterialFactory.createProduct('2');
  product2.display();
}
// Superclass
class Laptop {
  // Properties
  String _brand;
  String _model;
  int _ram;
  int _internalStorage;
  String _processor;

  // Constructors
  Laptop(this._brand, this._model, this._ram, this._internalStorage,
      this._processor);

  // Getters
  String get brand => _brand;
  String get model => _model;
  int get ram => _ram;
  int get internalStorage => _internalStorage;
  String get processor => _processor;

  // Setters
  set brand(String name) {
    _brand = name;
    print('Brand name has been changed');
  }

  set ram(int value) {
    if (value < 4) {
      print('Minimum RAM requirement not met');
    } else {
      _ram = value;
    }
  }

  // Methods
  dynamic systemInfo() {
    print(
        'My pc has the following specs: \n Brand: ${brand} \n Model: ${model} \n RAM: ${ram}GB \n Internal Storage: ${internalStorage}GB \n Processor: ${processor}');
  }
}

// Subclass
class Addons extends Laptop {
  // Properties
  bool backlight;
  bool touchscreen;
  bool flexibility;

  // Constructor
  Addons(String brand, String model, int ram, int internalStorage,
      String processor, this.backlight, this.touchscreen, this.flexibility)
      : super(brand, model, ram, internalStorage, processor);

  // Methods
  void displayAddons() {
    systemInfo();
    print(
        'Add-ons will include: \n Backlight: ${backlight} \n Touchscreen: ${touchscreen} \n 360 Flexibility: ${flexibility}');
  }
}

void main() {
  Laptop myLaptop = Laptop('HP', 'Probook', 12, 512, 'i7');

  myLaptop.systemInfo();

  Addons moreInfo = Addons('Lenovo', 'Yoga', 16, 1000, 'i7', true, true, true);

  moreInfo.displayAddons();
}

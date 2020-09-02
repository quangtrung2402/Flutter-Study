abstract class Addition {
  int id;
  String type;
  Addition(int id, String type)
      : this.id = id,
        this.type = type;
}

class Batter extends Addition {
  Batter(int id, String type) : super(id, type);
}

class Topping extends Addition {
  Topping(int id, String type) : super(id, type);
}

class Donut {
  int id;
  String type;
  String name;
  double ppu;
  List<Batter> batters;
  List<Topping> toppings;

  Donut(this.id, this.type, this.name, this.ppu);

  addBatter(Batter bt) {
    this.batters.add(bt);
  }

  deleteBatter(int batterId) {
    this.batters.removeWhere((item) => item.id == batterId);
  }

  addTopping(Topping tp) {
    this.toppings.add(tp);
  }

  deleteTopping(int toppingId) {
    this.toppings.removeWhere((item) => item.id == toppingId);
  }
}

void main() {}

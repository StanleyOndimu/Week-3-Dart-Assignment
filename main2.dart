abstract class Music {
  void singer();
}

class Rock extends Music {
  String artist;

  Rock(this.artist);

  @override
  void singer() {
    print('Rock has mostly bands like ${artist}');
  }
}

void main() {
  Rock hardRock = Rock('Daughty');
  hardRock.singer();
}

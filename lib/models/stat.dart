class Stat{
  late int hp;
  late int attack;
  late int defense;
  late int spAtk;
  late int spDef;
  late int speed;
  late int total;

  Stat(this.hp, this.attack, this.defense, this.spAtk, this.spDef, this.speed);

  int getTotal(){
    return hp+attack+defense+spAtk+spDef+speed;
  }
}
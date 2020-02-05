#include"Archer.h"

/*
YOU MUST WRITE THE IMPLEMENTATIONS OF THE REQUESTED FUNCTIONS
IN THIS FILE. START YOUR IMPLEMENTATIONS BELOW THIS LINE
*/

Archer::Archer(uint id,int x, int y, Team team):
    Player(id, x, y, team){
        HP = getMaxHP();
    }

Archer::~Archer() {}

int Archer::getAttackDamage() const{
    return 50;
}

int Archer::getHealPower() const{
    return 0;
}

int Archer::getMaxHP() const{
    return 200;
}

std::vector<Goal> Archer::getGoalPriorityList(){
    std::vector<Goal> list;
    list.push_back(ATTACK);
    return list;
}

const std::string Archer::getClassAbbreviation() const{
    if(team == BARBARIANS)
        return "AR";
    else
        return "ar";
}

std::vector<Coordinate> Archer::getAttackableCoordinates(){
    std::vector<Coordinate> list;
    list.push_back(coordinate + Coordinate(0,1));
    list.push_back(coordinate + Coordinate(1,0));
    list.push_back(coordinate + Coordinate(0,-1));
    list.push_back(coordinate + Coordinate(-1,0));
    list.push_back(coordinate + Coordinate(0,2));
    list.push_back(coordinate + Coordinate(2,0));
    list.push_back(coordinate + Coordinate(0,-2));
    list.push_back(coordinate + Coordinate(-2,0));
    return list;
}

std::vector<Coordinate> Archer::getMoveableCoordinates(){
    return std::vector<Coordinate>();
}

std::vector<Coordinate> Archer::getHealableCoordinates(){
    return std::vector<Coordinate>();
}


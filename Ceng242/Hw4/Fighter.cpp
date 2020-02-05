#include"Fighter.h"

/*
YOU MUST WRITE THE IMPLEMENTATIONS OF THE REQUESTED FUNCTIONS
IN THIS FILE. START YOUR IMPLEMENTATIONS BELOW THIS LINE
*/

Fighter::Fighter(uint id,int x, int y, Team team):
    Player(id, x, y, team){
        HP = getMaxHP();
    }

Fighter::~Fighter() {}

int Fighter::getAttackDamage() const{
    return 100;
}

int Fighter::getHealPower() const{
    return 0;
}

int Fighter::getMaxHP() const{
    return 400;
}

std::vector<Goal> Fighter::getGoalPriorityList(){
    std::vector<Goal> list;
    list.push_back(ATTACK);
    list.push_back(TO_ENEMY);
    list.push_back(CHEST);
    return list;
}

const std::string Fighter::getClassAbbreviation() const{
    if(team == BARBARIANS)
        return "FI";
    else
        return "fi";
}

std::vector<Coordinate> Fighter::getAttackableCoordinates(){
    std::vector<Coordinate> list;
    list.push_back(coordinate + Coordinate(0,1));
    list.push_back(coordinate + Coordinate(1,0));
    list.push_back(coordinate + Coordinate(0,-1));
    list.push_back(coordinate + Coordinate(-1,0));
    return list;
}

std::vector<Coordinate> Fighter::getMoveableCoordinates(){
    std::vector<Coordinate> list;
    list.push_back(coordinate + Coordinate(0,1));
    list.push_back(coordinate + Coordinate(1,0));
    list.push_back(coordinate + Coordinate(0,-1));
    list.push_back(coordinate + Coordinate(-1,0));
    return list;
}

std::vector<Coordinate> Fighter::getHealableCoordinates(){
    return std::vector<Coordinate>();
}
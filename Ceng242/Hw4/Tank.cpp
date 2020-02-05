#include"Tank.h"

/*
YOU MUST WRITE THE IMPLEMENTATIONS OF THE REQUESTED FUNCTIONS
IN THIS FILE. START YOUR IMPLEMENTATIONS BELOW THIS LINE
*/

Tank::Tank(uint id,int x, int y, Team team):
    Player(id, x, y, team){
        HP = getMaxHP();
    }

Tank::~Tank() {}

int Tank::getAttackDamage() const{
    return 25;
}

int Tank::getHealPower() const{
    return 0;
}

int Tank::getMaxHP() const{
    return 1000;
}

std::vector<Goal> Tank::getGoalPriorityList(){
    std::vector<Goal> list;
    list.push_back(TO_ENEMY);
    list.push_back(ATTACK);
    list.push_back(CHEST);
    return list;
}

const std::string Tank::getClassAbbreviation() const{
    if(team == BARBARIANS)
        return "TA";
    else
        return "ta";
}

std::vector<Coordinate> Tank::getAttackableCoordinates(){
    std::vector<Coordinate> list;
    list.push_back(coordinate + Coordinate(0,1));
    list.push_back(coordinate + Coordinate(1,0));
    list.push_back(coordinate + Coordinate(0,-1));
    list.push_back(coordinate + Coordinate(-1,0));
    return list;
}

std::vector<Coordinate> Tank::getMoveableCoordinates(){
    std::vector<Coordinate> list;
    list.push_back(coordinate + Coordinate(0,1));
    list.push_back(coordinate + Coordinate(1,0));
    list.push_back(coordinate + Coordinate(0,-1));
    list.push_back(coordinate + Coordinate(-1,0));
    return list;
}

std::vector<Coordinate> Tank::getHealableCoordinates(){
    return std::vector<Coordinate>();
}
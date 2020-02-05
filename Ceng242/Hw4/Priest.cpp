#include"Priest.h"

/*
YOU MUST WRITE THE IMPLEMENTATIONS OF THE REQUESTED FUNCTIONS
IN THIS FILE. START YOUR IMPLEMENTATIONS BELOW THIS LINE
*/

Priest::Priest(uint id,int x, int y, Team team):
    Player(id, x, y, team){
        HP = getMaxHP();
    }

Priest::~Priest() {}

int Priest::getAttackDamage() const{
    return 0;
}

int Priest::getHealPower() const{
    return 50;
}

int Priest::getMaxHP() const{
    return 150;
}

std::vector<Goal> Priest::getGoalPriorityList(){
    std::vector<Goal> list;
    list.push_back(HEAL);
    list.push_back(TO_ALLY);
    list.push_back(CHEST);
    return list;
}

const std::string Priest::getClassAbbreviation() const{
    if(team == BARBARIANS)
        return "PR";
    else
        return "pr";
}

std::vector<Coordinate> Priest::getAttackableCoordinates(){
    return std::vector<Coordinate>();
}

std::vector<Coordinate> Priest::getMoveableCoordinates(){
    std::vector<Coordinate> list;
    list.push_back(coordinate + Coordinate(0,1));
    list.push_back(coordinate + Coordinate(1,0));
    list.push_back(coordinate + Coordinate(0,-1));
    list.push_back(coordinate + Coordinate(-1,0));
    list.push_back(coordinate + Coordinate(1,1));
    list.push_back(coordinate + Coordinate(-1,-1));
    list.push_back(coordinate + Coordinate(1,-1));
    list.push_back(coordinate + Coordinate(-1,1));
    return list;
}

std::vector<Coordinate> Priest::getHealableCoordinates(){
    std::vector<Coordinate> list;
    list.push_back(coordinate + Coordinate(0,1));
    list.push_back(coordinate + Coordinate(1,0));
    list.push_back(coordinate + Coordinate(0,-1));
    list.push_back(coordinate + Coordinate(-1,0));
    list.push_back(coordinate + Coordinate(1,1));
    list.push_back(coordinate + Coordinate(-1,-1));
    list.push_back(coordinate + Coordinate(1,-1));
    list.push_back(coordinate + Coordinate(-1,1));
    return list;
}
#include"Scout.h"

/*
YOU MUST WRITE THE IMPLEMENTATIONS OF THE REQUESTED FUNCTIONS
IN THIS FILE. START YOUR IMPLEMENTATIONS BELOW THIS LINE
*/

Scout::Scout(uint id,int x, int y, Team team):
    Player(id, x, y, team){
        HP = getMaxHP();
    }

Scout::~Scout() {}

int Scout::getAttackDamage() const{
    return 25;
}

int Scout::getHealPower() const{
    return 0;
}

int Scout::getMaxHP() const{
    return 125;
}

std::vector<Goal> Scout::getGoalPriorityList(){
    std::vector<Goal> list;
    list.push_back(CHEST);
    list.push_back(TO_ALLY);
    list.push_back(ATTACK);
    return list;
}

const std::string Scout::getClassAbbreviation() const{
    if(team == BARBARIANS)
        return "SC";
    else
        return "sc";
}

std::vector<Coordinate> Scout::getAttackableCoordinates(){
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

std::vector<Coordinate> Scout::getMoveableCoordinates(){
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

std::vector<Coordinate> Scout::getHealableCoordinates(){
    return std::vector<Coordinate>();
}
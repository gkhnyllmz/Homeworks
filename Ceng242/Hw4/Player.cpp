#include"Player.h"

/*
YOU MUST WRITE THE IMPLEMENTATIONS OF THE REQUESTED FUNCTIONS
IN THIS FILE. START YOUR IMPLEMENTATIONS BELOW THIS LINE
*/

Player::Player(uint id,int x, int y, Team team):
    id(id), coordinate(Coordinate(x,y)), team(team){}

uint Player::getID() const{
    return id;
}

const Coordinate& Player::getCoord() const{
    return coordinate;
}

int Player::getHP() const{
    return HP;
}

Team Player::getTeam() const{
    return team;
}

std::string Player::getBoardID(){
    if(id<10){
        std::string str("0");
        str.std::string::push_back(id + 48);
        return str;
    }
    else{
        std::string str;
        str.std::string::push_back(id/10 + 48);
        str.std::string::push_back(id%10 + 48);
        return str;
    }
}

bool Player::attack(Player *enemy){
    std::cout << "Player " << getBoardID() << " attacked Player " << enemy->getBoardID() << " (" << getAttackDamage() << ")" << std::endl;
    enemy->HP -= this->getAttackDamage();
    return enemy->isDead();
}

void Player::heal(Player *ally){
    if(ally->HP + getHealPower() > ally->getMaxHP())
        ally->HP = ally->getMaxHP();
    else
        ally->HP += getHealPower();
    std::cout << "Player " << getBoardID() << " healed Player " << ally->getBoardID() << std::endl;
}

void Player::movePlayerToCoordinate(Coordinate c){
    std::cout << "Player " << getBoardID() << " moved from " << coordinate << " to " << c << std::endl;
    coordinate = c;
}

bool Player::isDead() const{
    return HP <= 0;
}
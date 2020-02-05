#include"Board.h"

/*
YOU MUST WRITE THE IMPLEMENTATIONS OF THE REQUESTED FUNCTIONS
IN THIS FILE. START YOUR IMPLEMENTATIONS BELOW THIS LINE
*/

Board::Board(uint _size, std::vector<Player*>* _players, Coordinate chest):
    size(_size), players(_players), chest(chest) {}

Board::~Board() {}

bool Board::isCoordinateInBoard(const Coordinate& c){
    if(c < Coordinate(0,0))
        return false;
    else if(c < Coordinate(size-1, size-1))
        return true;
}

bool Board::isPlayerOnCoordinate(const Coordinate& c){
    if((*this)[c] == NULL)
        return false;
    else
        return true;
}

Player *Board::operator [](const Coordinate& c){
    Player *temp;
    for(int i=0; i<players->size(); i++){
        if((*players)[i]->getCoord() == c)
            return (*players)[i];
    }
    return NULL;
}

Coordinate Board::getChestCoordinates(){
    return chest;
}

void Board::printBoardwithID(){
    for(int i=0; i<size; i++){
        for(int j=0; j<size; j++){
            if((*this)[Coordinate(j,i)] != NULL)
                std::cout << (*this)[Coordinate(j,i)]->getBoardID() << " ";
            else if(Coordinate(j,i) == chest)
                std::cout << "Ch ";
            else
                std::cout << "__ ";
        }
        std::cout << std::endl;
    }
}

void Board::printBoardwithClass(){
    for(int i=0; i<size; i++){
        for(int j=0; j<size; j++){
            if((*this)[Coordinate(j,i)] != NULL)
                std::cout << (*this)[Coordinate(j,i)]->getClassAbbreviation() << " ";
            else if(Coordinate(j,i) == chest)
                std::cout << "Ch ";
            else
                std::cout << "__ ";
        }
        std::cout << std::endl;
    }
}

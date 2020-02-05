#include"Game.h"

/*
YOU MUST WRITE THE IMPLEMENTATIONS OF THE REQUESTED FUNCTIONS
IN THIS FILE. START YOUR IMPLEMENTATIONS BELOW THIS LINE
*/

Game::Game(uint maxTurnNumber, uint boardSize, Coordinate chest):
    turnNumber(1), maxTurnNumber(maxTurnNumber), board(Board(boardSize, &players, chest)){}

Game::~Game(){
    for(int i=0; i<players.size(); i++){
        delete players[i];
    }
}

void Game::addPlayer(int id, int x, int y, Team team, std::string cls){
    Player *newplayer;
    if(cls == "ARCHER")
        newplayer = new Archer(id, x, y, team);
    else if(cls == "FIGHTER")
        newplayer = new Fighter(id, x, y, team);
    else if(cls == "PRIEST")
        newplayer = new Priest(id, x, y, team);
    else if(cls == "SCOUT")
        newplayer = new Scout(id, x, y, team);
    else if(cls == "TANK")
        newplayer = new Tank(id, x, y, team);

    if(players.empty()){
        players.insert(players.begin(), newplayer);
    }
    else{
        for(int i=0; ;i++){
            if(id < players[i]->getID()){
                players.insert(players.begin()+i, newplayer);
                break;
            }
            if(i == players.size()-1){
                players.insert(players.end(), newplayer);
                break;
            }
        }
    }
}

bool Game::isGameEnded(){
    if(turnNumber > maxTurnNumber){
        std::cout << "Game ended at turn " << turnNumber-1 << ". Maximum turn number reached. Knight victory." << std::endl;
        return true;
    }
    else if(allTeamDie(BARBARIANS)){
        std::cout << "Game ended at turn " << turnNumber-1 << ". All barbarians dead. Knight victory." << std::endl;
        return true;
    }
    else if(allTeamDie(KNIGHTS)){
        std::cout << "Game ended at turn " << turnNumber-1 << ". All knights dead. Barbarian victory." << std::endl;
        return true;

    }
    else if(chestCaptured()){
        std::cout << "Game ended at turn " << turnNumber-1 << ". Chest captured. Barbarian victory." << std::endl;
        return true;

    }
    else
        return false;    
}

void Game::playTurn(){
    std::cout << "Turn " << turnNumber << " has started." << std::endl;
    for(int i=0; i<players.size(); i++){
        uint id = players[i]->getID();
        playTurnForPlayer(players[i]);
        if(id != players[i]->getID()){
            i--;
        }
    }
    turnNumber++;
}

Goal Game::playTurnForPlayer(Player* player){
    if(player->isDead()){
        std::cout << "Player " << player->getBoardID() << " has died." << std::endl;
        for(int i=0; i<players.size(); i++){
            if(players[i] == player){
                players.erase(players.begin()+i);
                delete player;
                return NO_GOAL;
            }
        }
    }
    else{
        std::vector<Goal> list = player->getGoalPriorityList();
        for(int i=0; i<list.size(); i++){
            if(list[i] == ATTACK){
            	Team team;
            	if(player->getTeam() == KNIGHTS) team = BARBARIANS;
            	else team = KNIGHTS;
            	if(allTeamDie(team)) continue;
                Player *attacked = NULL;
                std::vector<Coordinate> range = player->getAttackableCoordinates();
                for(int j=0; j<range.size(); j++){
                    if(board[range[j]] != NULL && board[range[j]]->getTeam() != player->getTeam()){
                        if(attacked == NULL || attacked->getID() > board[range[j]]->getID()){
                            attacked = board[range[j]];
                        }
                    }
                }
                if(attacked != NULL){
                    player->attack(attacked);
                    return ATTACK;
                }
            }
            else if(list[i] == CHEST){
                if(player->getCoord() == board.getChestCoordinates())
                    continue;
                std::vector<Coordinate> range = player->getMoveableCoordinates();
                Coordinate moved(-1,-1);
                for(int j=0; j<range.size(); j++){
                    int distance = board.getChestCoordinates() - range[j];
                    int distance2 = board.getChestCoordinates() - player->getCoord();
                    if(distance < distance2){
                        if(moved == Coordinate(-1,-1)){
                            if(board.isCoordinateInBoard(range[j]) && board.isPlayerOnCoordinate(range[j]) == false)
                                moved = range[j];
                            else continue;
                        }
                        else if(distance < board.getChestCoordinates()-moved && board.isPlayerOnCoordinate(range[j]) == false)
                            moved = range[j];
                        else if(distance == board.getChestCoordinates()-moved && board.isPlayerOnCoordinate(range[j]) == false){
                            if(player->getCoord().y == range[j].y)
                                moved = range[j];
                        }
                    }
                }
                if(moved != Coordinate(-1,-1)){
                	player->movePlayerToCoordinate(moved);
                	return CHEST;
                }     
            }
            else if(list[i] == TO_ENEMY){
                Player *closest = NULL;
                Team team;
            	if(player->getTeam() == KNIGHTS) team = BARBARIANS;
            	else team = KNIGHTS;
            	if(allTeamDie(team)) continue;
                for(int j=0; j<players.size(); j++){
                    if(player->getTeam() == players[j]->getTeam()){
                        continue;
                    }
                    if(closest == NULL)
                        closest = players[j];
                    else if(player->getCoord() - closest->getCoord() > player->getCoord() - players[j]->getCoord() && player->getTeam() != players[j]->getTeam())
                        closest = players[j];
                    else if(player->getCoord() - closest->getCoord() == player->getCoord() - players[j]->getCoord() && player->getTeam() != players[j]->getTeam()){
                        if(closest->getID() > players[j]->getID())
                            closest = players[j];
                    }
                }
                std::vector<Coordinate> range = player->getMoveableCoordinates();
                Coordinate moved(-1,-1);
                for(int j=0; j<range.size(); j++){
                    int distance = closest->getCoord() - range[j];
                    int distance2 = closest->getCoord() - player->getCoord();
                    if(distance < distance2){
                        if(moved == Coordinate(-1,-1)){
                             if(board.isCoordinateInBoard(range[j]) && board.isPlayerOnCoordinate(range[j]) == false)
                                moved = range[j];
                            else continue;
                        }
                        else if(distance < closest->getCoord()-moved && board.isPlayerOnCoordinate(range[j]) == false)
                             moved = range[j];
                        else if(distance == closest->getCoord()-moved && board.isPlayerOnCoordinate(range[j]) == false){
                            if(player->getCoord().y == range[j].y)
                                moved = range[j];
                        }
                    }
                }
                if(moved != Coordinate(-1,-1)){
                    player->movePlayerToCoordinate(moved);
                    return TO_ENEMY;
                }
            }
            else if(list[i] == TO_ALLY){
                Player *closest = NULL;
            	if(allTeamDie(player->getTeam())) continue;
                for(int j=0; j<players.size(); j++){
                    if(player->getTeam() != players[j]->getTeam() || player == players[j]){
                        continue;
                    }
                    if(closest == NULL)
                        closest = players[j];
                    else if(player->getCoord() - closest->getCoord() > player->getCoord() - players[j]->getCoord() && player->getTeam() == players[j]->getTeam())
                        closest = players[j];
                    else if(player->getCoord() - closest->getCoord() == player->getCoord() - players[j]->getCoord() && player->getTeam() == players[j]->getTeam()){
                        if(closest->getID() > players[j]->getID())
                            closest = players[j];
                    }
                }

                if(closest == NULL)
                    continue;
                std::vector<Coordinate> range = player->getMoveableCoordinates();
                Coordinate moved(-1,-1);
                for(int j=0; j<range.size(); j++){
                    int distance = closest->getCoord() - (range[j]);
                    int distance2 = closest->getCoord() - player->getCoord();
                    if(distance < distance2){
                        if(moved == Coordinate(-1,-1)){
                            if(board.isCoordinateInBoard(range[j]) && board.isPlayerOnCoordinate(range[j]) == false)
                                moved = range[j];
                            else continue;
                        }
                        else if(distance < closest->getCoord()-moved && board.isPlayerOnCoordinate(range[j]) == false)
                            moved = range[j];
                        else if(distance == closest->getCoord()-moved && board.isPlayerOnCoordinate(range[j]) == false){
                            if(player->getCoord().y == range[j].y)
                                moved = range[j];
                        }
                    }
                }
                if(moved != Coordinate(-1,-1)){
                    player->movePlayerToCoordinate(moved);
                    return TO_ALLY;
                }
            }
            else if(list[i] == HEAL){
                int heal = 0;
                std::vector<Player *> healed ;
                std::vector<Coordinate> range = player->getHealableCoordinates();
                for(int j=0; j<range.size(); j++){
                    if(board[range[j]] != NULL && board[range[j]]->getTeam() == player->getTeam()){
                        heal = 1;
                        healed.push_back(board[range[j]]);
                    }
                }
                for(int j=0; j<healed.size(); j++){
                    player->heal(healed[j]);
                }
                if(heal == 1)
                    return HEAL;
            }
        }
        return NO_GOAL;
    }
}


bool Game::allTeamDie(Team team){
    for(int i=0; i<players.size(); i++){
        if(players[i]->getTeam() == team){
            return false;
        }
    }
    return true;
}

bool Game::chestCaptured(){
    for(int i=0; i<players.size(); i++){
        if(players[i]->getTeam() == BARBARIANS && players[i]->getCoord() == board.getChestCoordinates()){
            return true;   
        }
    }
    return false;
}

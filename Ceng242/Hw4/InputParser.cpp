#include"InputParser.h"

/*
YOU MUST WRITE THE IMPLEMENTATIONS OF THE REQUESTED FUNCTIONS
IN THIS FILE. START YOUR IMPLEMENTATIONS BELOW THIS LINE
*/

Game* InputParser::parseGame(){
    int boardsize, c_x, c_y, max_turn, p_number;
    std::cin >> boardsize >> c_x >> c_y >> max_turn >> p_number;
    Game *new_game = new Game(max_turn, boardsize, Coordinate(c_x, c_y)); 
    for(int i=0; i<p_number; i++){
        int id, x, y;
        std::string p_class;
        std::string str;
        Team team;
        std::cin >> id >> p_class >> str >> x >> y;
        if(str == "BARBARIAN")
            team = BARBARIANS;
        else
            team = KNIGHTS;
        new_game->addPlayer(id, x, y, team, p_class);
    }
    return new_game;
}

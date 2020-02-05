#include "Laptime.h"

/*
YOU MUST WRITE THE IMPLEMENTATIONS OF THE REQUESTED FUNCTIONS
IN THIS FILE. START YOUR IMPLEMENTATIONS BELOW THIS LINE 
*/

Laptime::Laptime(int laptime):
    laptime(laptime), next(NULL) {}

Laptime::Laptime(const Laptime& rhs):
    laptime(rhs.laptime), next(NULL) {}

Laptime::~Laptime() {}

void Laptime::addLaptime(Laptime *next){
    Laptime *temp;
    for(temp=this; temp->next; temp=temp->next);
    temp->next = next;
}

bool Laptime::operator<(const Laptime& rhs) const{
    return laptime < rhs.laptime;
}

bool Laptime::operator>(const Laptime& rhs) const{
    return laptime > rhs.laptime;
}

Laptime& Laptime::operator+(const Laptime& rhs){
    laptime += rhs.laptime;
    return *this;
}

std::ostream& operator<<(std::ostream& os, const Laptime& laptime){
    int min, sec, ms;
    min = (laptime.laptime / 60000);
    sec = (laptime.laptime - min * 60000) / 1000;
    ms = laptime.laptime - min * 60000 - sec * 1000;
    if(sec < 10){
        if(ms < 100){
            os << min << ":0" << sec << ".0" << ms;
        }
        else{
            os << min << ":0" << sec << "." << ms;
        }
    }
    else{
        if(ms < 100){
            os << min << ":" << sec << ".0" << ms;
        }
        else{
            os << min << ":" << sec << "." << ms;
        }
    }

}
#include "Race.h"
#include "Utilizer.h"

/*
YOU MUST WRITE THE IMPLEMENTATIONS OF THE REQUESTED FUNCTIONS
IN THIS FILE. START YOUR IMPLEMENTATIONS BELOW THIS LINE 
*/

Race::Race(std::string race_name):
    race_name(race_name), average_laptime(Utilizer::generateAverageLaptime()), head(NULL), lap_number(0) {}

Race::Race(const Race& rhs){
    Car *temp1, *temp2;
    race_name = rhs.race_name;
    average_laptime = rhs.average_laptime;
    for(temp1 = head, temp2 = rhs.head; temp2; temp1 = temp1->getNext(), temp2 = temp2->getNext()){
        temp1->setNext(new Car(temp2->getDriverName()));
    }
    lap_number = rhs.lap_number;
}

Race::~Race(){/*
    Car *temp=head;
    while(temp){
        Car *del=temp;
        temp = temp->getNext();
        delete del;
    }*/
}

std::string Race::getRaceName() const{
    return race_name;
}

void Race::addCartoRace(){}

void Race::addCartoRace(Car& car){
    Car *temp;
    if(head == NULL)
        head = &car;
    else{
        for(temp = head; temp->getNext(); temp = temp->getNext());
        temp->setNext(&car);
    } 
}

int Race::getNumberOfCarsinRace(){
    Car *temp;
    int number = 0;
    for(temp = head; temp; temp = temp->getNext())
        number++;
    return number;
}

void Race::goBacktoLap(int lap){
    Car *temp;
    for(temp = head; temp; temp = temp->getNext()){
        for(int i = 0; i < (lap_number - lap); i++){
            temp--;
        }
    }
}

void Race::operator++(){
    Car *temp;
    for(temp = head; temp; temp = temp->getNext()){
        temp->Lap(average_laptime);
    }
    lap_number++;
}

void Race::operator--(){
    Car *temp;
    for(temp = head; temp->getNext(); temp = temp->getNext()){
        delete temp->getNext();
        temp->setNext(NULL);
    }
    lap_number--;
}

Car Race::operator[](const int car_in_position){
    Car *temp;
    int i=0;
    for(temp = head; temp; temp = temp->getNext(), i++){
        if(i == car_in_position)
            return *temp;
    }
}

Race& Race::operator=(const Race& rhs){}

std::ostream& operator<<(std::ostream& os, const Race& race){
    Car *temp;
    int i=1;
    for(temp = race.head; temp; temp = temp->getNext(), i++){
        os << i << "--" << *temp << std::endl;
    }
}
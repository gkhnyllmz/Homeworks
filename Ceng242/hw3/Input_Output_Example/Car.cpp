#include "Car.h"
#include "Utilizer.h"

/*
YOU MUST WRITE THE IMPLEMENTATIONS OF THE REQUESTED FUNCTIONS
IN THIS FILE. START YOUR IMPLEMENTATIONS BELOW THIS LINE 
*/

Car::Car(std::string driver_name):
    driver_name(driver_name), performance(Utilizer::generatePerformance()), head(NULL), next(NULL), smallest_laptime(0), total_laptime(0) {}
Car::Car(const Car& rhs){
    Laptime *temp1, *temp2;
    driver_name = rhs.driver_name;
    performance = rhs.performance;
    smallest_laptime = rhs.smallest_laptime;
    total_laptime = rhs.total_laptime;
    if(rhs.head == NULL) head = NULL;
    else{
        for(temp1 = head, temp2 = rhs.head; temp2; temp1 = temp1->getNext(), temp2 = temp2->getNext()){
            temp1->setNext(new Laptime(temp2->getLaptime()));
        }
    }
    
    next = NULL;
}

Car::~Car(){/*
    Laptime *temp=head->getNext();
    while(temp){
        Laptime *del=temp;
        temp = temp->getNext();
        delete del;
    }*/
}

std::string Car::getDriverName() const{
    return driver_name;
}

double Car::getPerformance() const{
    return performance;
}

void Car::addCar(Car *next){
    Car *temp = this->next;
    if(temp == NULL)
        this->next = next;
    else{
        for( ; temp->next; temp=temp->next);
        temp->next = next;
    }
}

bool Car::operator<(const Car& rhs) const{
    int total1 = head->totalLaptime() , total2 = rhs.head->totalLaptime();
    return total1 < total2;
}

bool Car::operator>(const Car& rhs) const{
    int total1 = head->totalLaptime() , total2 = rhs.head->totalLaptime();
    return total1 > total2;
}

Laptime Car::operator[](const int lap) const{
    Laptime *temp;
    int i=0;
    for(temp = head; temp; i++, temp = temp->getNext()){
        if(i == lap){
            return *temp;
        }
    }
    return Laptime(0);
}

void Car::Lap(const Laptime& average_laptime){
    Laptime *variance = new Laptime(Utilizer::generateLaptimeVariance(performance));
    Laptime *temp;
    *variance = *variance + average_laptime;
    if(head == NULL)
        head = variance;
    else{
        for(temp = head; temp->getNext(); temp = temp->getNext());
        temp->setNext(variance);
    }
    total_laptime = total_laptime + *variance;
    smallest_laptime = head->smallestLaptime();
}

std::ostream& operator<<(std::ostream& os, const Car& car){
    std::size_t i = (car.driver_name).std::string::find(' ') + 1;
    char surname[4];
    surname[0] = car.driver_name[i];
    surname[1] = car.driver_name[i+1] - 32;
    surname[2] = car.driver_name[i+2] - 32;
    surname[3] = 0;
    os << surname << "--" << *(car.head) << "--" << car.smallest_laptime << "--" << car.total_laptime;
}
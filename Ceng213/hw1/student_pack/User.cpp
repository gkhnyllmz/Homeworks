#include <iostream>
#include "User.hpp"
#include "Video.hpp"

void User::printSubscriptions() {
    Node< Video*> * first = subscriptions.first();
    while (first) {
        cout << *(first->getData());
        first = first->getNext();
    }
    cout << std::endl;
}

void User::printFriends() {
    Node< User*> * first = friends.first();
    while (first) {
        cout << *(first->getData());
        first = first->getNext();
    }
    cout << std::endl;
}

ostream& operator<<(ostream& out, const User & user) {
    string st = (user.status == ACTIVE) ? "active" : "suspended";
    out << "username:" << user.username << ",name:" << user.name << ",surname:" << user.surname << ",Status:" << st << endl;
    return out;
}

/* TO-DO: method implementations below */
	
User::User(){
    username = "";
    name = "";
    surname = "";
    status = ACTIVE;
    LinkedList<Video*> subscriptions;
    LinkedList<User*> friends;
}

User::User(string username, string name, string surname){
    this->username = username;
    this->name = name;
    this->surname = surname;
    status = ACTIVE;
    LinkedList<Video*> subscriptions;
    LinkedList<User*> friends;
}

User::~User(){}

const string& User::getUsername() const{
    return username;
}

const string& User::getName() const{
    return name;
}

const string& User::getSurname() const{
    return surname;
}

Status User::getStatus() const{
    return status;
}

void User::updateStatus(Status st){
    status = st;
}

void User::subscribe(Video * video){
    subscriptions.insertNode(subscriptions.getHead(), video);
}

void User::unSubscribe(Video * video){
    Node<Video*> *temp = subscriptions.first();
    while(temp){
        if(*(temp->getData()) == *video) break;
        else temp=temp->getNext();
    }
    if(temp) subscriptions.deleteNode(subscriptions.findPrev(video));
}

void User::addFriend(User * user){
    friends.insertNode(friends.getHead(), user);
}

void User::removeFriend(User * user){
    Node<User*> *temp = friends.first();
    while(temp){
        if(temp->getData()->getUsername() == user->getUsername()) break;
        else temp=temp->getNext();
    }
    if(temp){
        friends.deleteNode(friends.findPrev(temp->getData()));
    }
}

LinkedList<Video*>* User::getSubscriptions(){
    LinkedList<Video*>* sp = &subscriptions;
    return sp;
}

LinkedList<User*>* User::getFriends(){
    LinkedList<User*>* up = &friends;
    return up;
}

bool User::operator==(const User& rhs) const{
    if(username == rhs.getUsername()) return true;
    return false;
}
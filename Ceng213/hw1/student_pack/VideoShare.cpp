#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include "VideoShare.hpp"
#include "User.hpp"

using namespace std;

void VideoShare::printAllVideos() {
    videos.print();
}

void VideoShare::printAllUsers() {
    users.print();
}

/* TO-DO: method implementations below */

VideoShare::VideoShare(){

    LinkedList<User> users;
    LinkedList<Video> videos;

}

VideoShare::~VideoShare(){}

void VideoShare::createUser(const string & userName, const string & name, const string & surname){
    
    User newuser(userName, name, surname);
    users.insertNode(users.getHead(), newuser);
}

void VideoShare::loadUsers(const string & fileName){
    
    ifstream file;
    string line, userName, name, surName;
    const char * chr = fileName.c_str();

    file.open(chr);

    while(file.good()){
        
        getline(file, line);

        size_t pos = line.find(";");

        userName = line.substr(0, pos);
        line.erase(0, pos+1);
        pos = line.find(";");
        name = line.substr(0, pos);
        line.erase(0, pos+1);
        surName = line;

        if(userName!="\0")
        createUser(userName, name, surName);
    }
}

void VideoShare::createVideo(const string & title, const string & genre){

    Video newvideo(title, genre);
    videos.insertNode(videos.getHead(), newvideo);
}

void VideoShare::loadVideos(const string & fileName){

    ifstream file;
    string line, title, genre;
    const char * chr = fileName.c_str();

    file.open(chr);

    while(file.good()){
        
        getline(file, line);

        size_t pos = line.find(";");

        title = line.substr(0, pos);
        line.erase(0, pos+1);
        genre = line;

        if(title!="\0")
        createVideo(title, genre);
    }

}

void VideoShare::addFriendship(const string & userName1, const string & userName2){
    User *userp1, *userp2;

    userp1 = findUser(userName1);
    userp2 = findUser(userName2);

    if(userp1 != NULL && userp2 != NULL){
        userp1->addFriend(userp2);
        userp2->addFriend(userp1);
    }
}

void VideoShare::removeFriendship(const string & userName1, const string & userName2){
    User *userp1, *userp2;

    userp1 = findUser(userName1);
    userp2 = findUser(userName2);

    if(userp1 != NULL && userp2 != NULL){
        userp1->removeFriend(userp2);
        userp2->removeFriend(userp1);
    }
}

void VideoShare::updateUserStatus(const string & userName, Status newStatus){
    User *userp;

    userp = findUser(userName);
    userp->updateStatus(newStatus);

}

void VideoShare::subscribe(const string & userName, const string & videoTitle){
    User *userp;
    Video *videop;

    userp = findUser(userName);

    if(userp != NULL && userp->getStatus()==ACTIVE){
        videop = findVideo(videoTitle);
        userp->subscribe(videop);
    }
}

void VideoShare::unSubscribe(const string & userName, const string & videoTitle){
    User *userp;
    Video *newvideop;

    userp = findUser(userName);
    newvideop = findVideo(videoTitle);

    if(userp != NULL && userp->getStatus()==ACTIVE){
        userp->unSubscribe(newvideop);
    }
}

void VideoShare::deleteUser(const string & userName){
    User *userp;
    Node<User> *temp = users.first();
    
    userp = findUser(userName);

    while(temp){
        if(temp->getDataPtr() != userp){
            removeFriendship(userName, temp->getData().getUsername());
        } 
        temp=temp->getNext();
    }

    users.deleteNode(users.findPrev(*userp));
}

void VideoShare::sortUserSubscriptions(const string & userName){
    User *userp;
    Node<Video*> *subs;
    int n;
    userp=findUser(userName);
    n=userp->getSubscriptions()->getLength();
    subs = userp->getSubscriptions()->first();
    bool sorted = false ;
    for (int i = 0; !sorted; i++) {
        sorted = true;
        for (int j=0; subs->getNext(); j++){
            if (subs->getData()->getTitle().compare(subs->getNext()->getData()->getTitle())>0) {
            subs=subs->getNext();
            userp->getSubscriptions()->swap(j, j+1);
            sorted = false ;
            }
            else subs=subs->getNext();
        }
        subs=userp->getSubscriptions()->first();
    }
}

void VideoShare::printUserSubscriptions(const string & userName){
    User *userp;

    userp = findUser(userName);
    if(userp) userp->printSubscriptions();

}

void VideoShare::printFriendsOfUser(const string & userName){
    User *userp;

    userp = findUser(userName);
    if(userp) userp->printFriends();
}

void VideoShare::printCommonSubscriptions(const string & userName1, const string & userName2){
    User *userp1, *userp2;
    Node<Video*> *video1, *video2;

    userp1=findUser(userName1);
    userp2=findUser(userName2);

    for(video1=userp1->getSubscriptions()->first(); video1; video1=video1->getNext()){
        for(video2=userp2->getSubscriptions()->first(); video2; video2=video2->getNext())
            if(video1->getData()->getTitle()==video2->getData()->getTitle())
                cout << *(video1->getData());
    }
}

void VideoShare::printFriendSubscriptions(const string & userName){
    LinkedList<Video*> videos;
    User *userp;
    Node<User*> *friends;
    Node<Video*> *video;
    Node<Video*> *temp;
    userp = findUser(userName);

    for(friends=userp->getFriends()->first(); friends; friends=friends->getNext()){
        for(video = friends->getData()->getSubscriptions()->first(); video; video=video->getNext()){
            int i=1;
            for(temp=videos.first(); temp; temp=temp->getNext()){
                if(temp->getData()->getTitle()==video->getData()->getTitle()){
                    i=0;
                }
            }
            if(i) videos.insertNode(videos.getHead(), video->getData());
        }
    }

    video=videos.first();

    bool sorted = false;
    for (int i = 0; !sorted; i++) {
        sorted = true;
        for (int j=0; video->getNext(); j++){
            if (video->getData()->getTitle().compare(video->getNext()->getData()->getTitle())>0) {
            video=video->getNext();
            videos.swap(j, j+1);
            sorted = false ;
            }
            else video=video->getNext();
        }
        video=videos.first();
    }

    for(temp=videos.first(); temp; temp=temp->getNext()){
        cout << *(temp->getData());
    }
}

bool VideoShare::isConnected(const string & userName1, const string & userName2){
    User *userp;
    static LinkedList<User*> looked;
    Node<User*> *temp, *temp2;
    bool result=false;

    userp = findUser(userName1);

    if(find(userp, looked)) return false;
    looked.insertNode(looked.getHead(), userp);

    for(temp=userp->getFriends()->first(); temp; temp=temp->getNext()){
        if(temp->getData()->getUsername()==userName2) return true;
    }

    for(temp=userp->getFriends()->first(); temp && !result; temp=temp->getNext()){
        if(!find(temp->getData(), looked)) result=isConnected(temp->getData()->getUsername(),userName2);
    }

    return result;
}

User* VideoShare::findUser(const string & userName) const{
    Node<User> *temp = users.first();

    while(1){
        if(temp == NULL) return NULL;
        if(temp->getDataPtr()->getUsername()==userName){
            return temp->getDataPtr();
        }
        else temp=temp->getNext();
    }
}

Video* VideoShare::findVideo(const string & title) const{
    Node<Video> *temp = videos.first();

    while(1){
        if(temp == NULL) return NULL;
        if(temp->getDataPtr()->getTitle()==title){
            return temp->getDataPtr();
        }
        else temp=temp->getNext();
    }
}

bool VideoShare::find(User * userp, LinkedList<User*> looked){
    Node<User*> *temp;

    for(temp=looked.first(); temp; temp=temp->getNext()){
        if(temp->getData()->getUsername()==userp->getUsername()) return true;
    }

    return false;
}
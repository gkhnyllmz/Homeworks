#include "hw3.h"

AccessControl::AccessControl(int table1Size, int table2Size){
    activeUsers.resize(table2Size, EMPTY);
    regUsers.resize(table1Size);
    for(int i=0; i<table1Size; i++){
        regUsers[i].first = EMPTY;
        regUsers[i].second = EMPTY;
    }
    tableSize1=table1Size;
    tableSize2=table2Size;
    userNum1=0;
    userNum2=0;
}

AccessControl::~AccessControl(){}

int AccessControl::addUser(std::string username, std::string pass){
    int index;

    for(int i=0; i<tableSize1; i++){
        index = hashFunction(username, tableSize1, i);
        if(regUsers[index].first == username) return 0;
        if(regUsers[index].first == EMPTY || regUsers[index].first == DELETED) break;
    }

    int resized=0;

    if((float)(userNum1+1)/tableSize1>MAX_LOAD_FACTOR){
            int oldsize=tableSize1;
            tableSize1=newsize(tableSize1);
            regUsers.resize(tableSize1);
            for(int j=oldsize; j<tableSize1; j++){
                regUsers[j].first = EMPTY;
                regUsers[j].second = EMPTY;
            }
            rehash(oldsize);
            resized = 1;
    }

    for(int j=0; resized && j<tableSize1; j++){
        index = hashFunction(username, tableSize1, j);
        if(regUsers[index].first == EMPTY || regUsers[index].first == DELETED) break;
    }
        

    if(regUsers[index].first == EMPTY || regUsers[index].first == DELETED){
        regUsers[index].first = username;
        regUsers[index].second = pass;
        userNum1++;
        return 1;
    }

    return 0;
}

int AccessControl::addUsers(std::string filePath){
    std::ifstream file;
    std::string line, username, pass;
    const char * chr = filePath.c_str();
    int result=0;

    file.open(chr);

    while(file.good()){
        
        getline(file, line);

        size_t pos = line.find(" ");

        username = line.substr(0, pos);
        line.erase(0, pos+1);
        pass = line;
        
        result += addUser(username, pass);
    }

    return result;
}

int AccessControl::delUser(std::string username, std::vector<std::string>& oldPasswords){
    int index;

    for(int i=0; i<tableSize1; i++){
        index = hashFunction(username, tableSize1, i);
        if(regUsers[index].first == username){
            oldPasswords.push_back(regUsers[index].second);
            regUsers[index].first = DELETED;
            regUsers[index].second = DELETED;
        }
    }

    if(oldPasswords.size()==0) return 0;
    else return 1;
}


int AccessControl::changePass(std::string username, std::string oldpass, std::string newpass){
    int index, newindex;
    std::string currentpass;

    for(int i=0; i<tableSize1; i++){
        index = hashFunction(username, tableSize1, i);
        if(regUsers[index].first == username){
            currentpass = regUsers[index].second; 
        }
    }

    if(currentpass == oldpass){
        if((float)(userNum1+1)/tableSize1>MAX_LOAD_FACTOR){
                int oldsize=tableSize1;
                tableSize1=newsize(tableSize1);
                regUsers.resize(tableSize1);
                for(int j=oldsize; j<tableSize1; j++){
                    regUsers[j].first = EMPTY;
                    regUsers[j].second = EMPTY;
                }
                rehash(oldsize);
        }

        for(int j=0; j<tableSize1; j++){
            index = hashFunction(username, tableSize1, j);
            if(regUsers[index].first == EMPTY || regUsers[index].first == DELETED) break;
        }
            

        if(regUsers[index].first == EMPTY || regUsers[index].first == DELETED){
            regUsers[index].first = username;
            regUsers[index].second = newpass;
            userNum1++;
            return 1;
        }
    }
    return 0;
}

int AccessControl::login(std::string username, std::string pass){
    int index, newindex;

    for(int i=0; i<tableSize2; i++){
        index = hashFunction(username, tableSize2, i);
        if(activeUsers[index] == username) return 0;
    }

    for(int i=0; i<tableSize1; i++){
        index = hashFunction(username, tableSize1, i);
        if(regUsers[index].first == username){
            newindex = hashFunction(username, tableSize1, i+1);
            if(regUsers[newindex].first != username) break;
        }
        if(regUsers[index].first == EMPTY || regUsers[index].first == DELETED) return 0;
    }
    
    if(regUsers[index].second == pass){
        if((float)(userNum2+1)/tableSize2>MAX_LOAD_FACTOR){
                int oldsize=tableSize2;
                tableSize2=newsize(tableSize2);
                activeUsers.resize(tableSize2);
                rehash2(oldsize);
        }

        for(int j=0; j<tableSize2; j++){
            index = hashFunction(username, tableSize2, j);
            if(activeUsers[index] == EMPTY || activeUsers[index] == DELETED) break;
        }
            

        if(activeUsers[index] == EMPTY || activeUsers[index] == DELETED){
            activeUsers[index] = username;
            userNum2++;
            return 1;
        }
    }
    return 0;
}

int AccessControl::logout(std::string username){
    int index;

    for(int i=0; i<tableSize2; i++){
        index = hashFunction(username, tableSize2, i);
        if(activeUsers[index] == username) break;
        if(activeUsers[index] == EMPTY || activeUsers[index] == DELETED) return 0;
    }

    activeUsers[index] = DELETED;
    userNum2--;
    return 1;
}

float AccessControl::printActiveUsers(){
    for(int i=0; i<tableSize2; i++){
        std::cout << activeUsers[i] << std::endl;
    }
    return (float)userNum2/tableSize2;
}

float AccessControl::printPasswords(){
    for(int i=0; i<tableSize1; i++){
        std::cout << regUsers[i].first << " " << regUsers[i].second << std::endl;
    }
    return (float)userNum1/tableSize1;
}

int AccessControl::newsize(int num){
    int i,j;
    for(i=2*num+1; ;i++){
        for(j=2; j<i; j++){
            if(i%j==0) break;
        }
        if(i==j) return i;
    }
}

void AccessControl::rehash(int oldsize){
    std::vector<std::pair<std::string, std::string> > temp(tableSize1);
    std::vector<std::string> hashed;
    for(int i=0; i<tableSize1; i++){
        if(regUsers[i].first != EMPTY || regUsers[i].first != DELETED){
            temp[i].first = EMPTY;
            temp[i].second = EMPTY;
        }
        else{
            temp[i].first = regUsers[i].first;
            temp[i].second = regUsers[i].second;
        }
    }
    int index, newindex;
    std::string username;
    for(int i=0; i<oldsize; i++){
        if(regUsers[i].first != EMPTY || regUsers[i].first != DELETED){
            int looked = 0;
            username = regUsers[i].first;
            for(int l=0; l<hashed.size(); l++){
                if(hashed[l]==username){
                    looked = 1;
                    break;
                }
            }
            if(looked == 0){
                hashed.push_back(username);
                for(int j=0; j<oldsize; j++){
                    index = hashFunction(username, oldsize, j);
                    if(regUsers[index].first == username){
                        for(int k=0; k<tableSize1; k++){
                            newindex = hashFunction(username, tableSize1, k);
                            if(temp[newindex].first == EMPTY || regUsers[index].first == DELETED){
                                temp[newindex] = regUsers[index];
                                break;
                            }
                        }
                    }
                }
            }
        }
    }
    regUsers = temp;
}

void AccessControl::rehash2(int oldsize){
    std::vector<std::string> temp(tableSize2);
    std::vector<std::string> hashed;
    for(int i=0; i<tableSize2; i++){
        if(activeUsers[i]!=EMPTY || activeUsers[i]!=DELETED){
            temp[i]=EMPTY;
        }
        else temp[i] = activeUsers[i];
    }
    int index, newindex;
    std::string username;
    for(int i=0; i<oldsize; i++){
        if(activeUsers[i] != EMPTY && activeUsers[i] != DELETED){
            int looked = 0;
            username = activeUsers[i];
            for(int l=0; l<hashed.size(); l++){
                if(hashed[l]==username){
                    looked = 1;
                    break;
                }
            }
            if(looked == 0){
                hashed.push_back(username);
                for(int j=0; j<oldsize; j++){
                    index = hashFunction(username, oldsize, j);
                    if(activeUsers[index] == username){
                        for(int k=0; k<tableSize2; k++){
                            newindex = hashFunction(username, tableSize2, k);
                            if(temp[newindex] == EMPTY || temp[newindex] == DELETED){
                                temp[newindex] = activeUsers[index];
                                break;
                            }
                        }
                    }
                }
            }
        }
    }
    activeUsers = temp;
}
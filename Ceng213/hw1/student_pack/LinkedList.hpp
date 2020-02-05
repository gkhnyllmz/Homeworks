#ifndef LINKEDLIST_HPP
#define	LINKEDLIST_HPP

#include <iostream>
#include "Node.hpp"

using namespace std;

/*....DO NOT EDIT BELOW....*/
template <class T>
class LinkedList {
private:
    Node<T>* head; 
    int length;  
public:

    LinkedList();
    LinkedList(const LinkedList<T>& ll);
    LinkedList<T>& operator=(const LinkedList<T>& ll);
    ~LinkedList();


    Node<T>* getHead() const;
    Node<T>* first() const;
    Node<T>* findPrev(const T& data) const;
    Node<T>* findNode(const T& data) const;
    void insertNode(Node<T>* prev, const T& data); 
    void deleteNode(Node<T>* prevNode);
    void clear();
    size_t getLength() const;
    void print() const;
    void swap(int index1, int index2);
};

template <class T>
void LinkedList<T>::print() const {
    const Node<T>* node = first();
    while (node) {
        std::cout << node->getData();
        node = node->getNext();
    }
    cout << std::endl;
}

/*....DO NOT EDIT ABOVE....*/

/* TO-DO: method implementations below */

template<class T>
LinkedList<T>::LinkedList(){
	head = new Node<T>;
	head->setNext(NULL);
	length = 0;
}

template<class T>
LinkedList<T>::LinkedList(const LinkedList<T>& ll){
	Node<T>* temp=ll.first();
	head = new Node<T>;
	length = 0;
	for(Node<T>* temp2=head; temp != NULL; temp=temp->getNext(), temp2=temp2->getNext()){
		insertNode(temp2,temp->getData());
	}
}
	

template<class T>
LinkedList<T>& LinkedList<T>::operator=(const LinkedList<T>& ll){
	Node<T> *temp1, *temp2;
	if(head != ll.getHead()){
		for(temp1 = head; temp1 != NULL; temp1 = temp2){
			temp2 = temp1->getNext();
			delete temp1;
		}
		head = new Node<T>;
		length = 0;
		for(temp2=head, temp1=ll.first(); temp1 != NULL; temp1=temp1->getNext(), temp2=temp2->getNext()){
			insertNode(temp2,temp1->getData());
		}
	}
	return *this;
}

template<class T>
LinkedList<T>::~LinkedList(){
	Node<T> *temp1, *temp2;
		for(temp1 = head; temp1 != NULL; temp1 = temp2){
			temp2 = temp1->getNext();
			delete temp1;
		}
}

template<class T>
Node<T>* LinkedList<T>::getHead() const{
	return head;
}

template<class T>
Node<T>* LinkedList<T>::first() const{
	return head->getNext();
}

template<class T>
Node<T>* LinkedList<T>::findPrev(const T& data) const{
	Node<T>* temp;
	
	for(temp = head ; temp != NULL; temp = temp->getNext()){
		if((temp->getNext())->getData() == data) return temp;
	} 
	
	return NULL;
}

template<class T>
Node<T>* LinkedList<T>::findNode(const T& data) const{
	Node<T>* temp;
	
	for(temp = first(); temp != NULL; temp = temp->getNext()){
		if(temp->getData() == data) return temp;
	}
	
	return NULL;
 }

template<class T> 
void LinkedList<T>::insertNode(Node<T>* prev, const T& data){
	Node<T> *innode;
	
	if(prev != NULL){
		innode = new Node<T>(data);
		innode->setNext(prev->getNext());
		prev->setNext(innode);
	}
	else{
		prev->setNext(head->getNext());
		head->setNext(prev);
	}
	length++;
}

template<class T>
void LinkedList<T>::deleteNode(Node<T>* prevNode){
	Node<T> *deleted;
	
	if(prevNode != NULL){
		deleted = prevNode->getNext();
		prevNode->setNext(deleted->getNext());
		delete deleted;
		length--;
	} 
}

template<class T>
void LinkedList<T>::clear(){
	Node<T> *temp1, *temp2;
	
	for(temp1 = first(); temp1!=NULL; temp1=temp2){
		temp2 = temp1->getNext();
		delete temp1;
	}
	
	head->setNext(NULL);
	length = 0;
}

template<class T>
size_t LinkedList<T>::getLength() const{
	return length;
}

template<class T>
void LinkedList<T>::swap(int index1, int index2){
	Node<T> *temp, *before1, *before2, *swap1, *swap2;
	int i;
	
	if(index1 >= length || index2 >= length) return;
	
	for(i=0, temp=head; (i<=index1 || i<=index2) ; i++, temp = temp->getNext()){
		
		if(index1<index2){
			if(i == index1){
				before1 = temp;
				swap1 = temp->getNext();
			}
										
			if(i == index2){
				before2 = temp;
				swap2 = temp->getNext();
			}
		}
		
		else{
		
			if(i == index2){
				before1 = temp;
				swap1 = temp->getNext();
			}
										
			if(i == index1){
				before2 = temp;
				swap2 = temp->getNext();
			}
		}
	}
	
	if((index2-index1)==1){
		temp = swap2->getNext();;
		before1->setNext(swap2);
		swap2->setNext(swap1);
		swap1->setNext(temp);
		return;
	}
	
	else if((index2-index1)==-1){
		temp = swap2->getNext();
		before1->setNext(swap2);
		swap2->setNext(swap1);
		swap1->setNext(temp);
		return;
	}
	
	temp = swap2->getNext();;
	before1->setNext(swap2);
	swap2->setNext(swap1->getNext());
	before2->setNext(swap1);
	swap1->setNext(temp);
}

/* end of your implementations*/
#endif	


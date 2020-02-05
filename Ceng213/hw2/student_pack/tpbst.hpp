#ifndef TWOPHASEBST_H
#define TWOPHASEBST_H

#include <iostream>
#include <string>
#include <stack>
#include <list>
// do not add any other library.
// modify parts as directed by assignment text and comments here.

template <class T>
class TwoPhaseBST {
private: //do not change
    struct SecondaryNode {
        std::string key;
        T data;
        SecondaryNode *left;
        SecondaryNode *right;

        SecondaryNode(const std::string &k, const T &d, SecondaryNode *l, SecondaryNode *r);
    };

    struct PrimaryNode {
        std::string key;
        PrimaryNode *left;
        PrimaryNode *right;
        SecondaryNode *rootSecondaryNode;

        PrimaryNode(const std::string &k, PrimaryNode *l, PrimaryNode *r, SecondaryNode *rsn);
    };

public: // do not change.
    TwoPhaseBST();
    ~TwoPhaseBST();

    TwoPhaseBST &insert(const std::string &primaryKey, const std::string &secondaryKey, const T &data);
    TwoPhaseBST &remove(const std::string &primaryKey, const std::string &secondaryKey);
    TwoPhaseBST &print(const std::string &primaryKey = "", const std::string &secondaryKey = "");
    T *find(const std::string &primaryKey, const std::string &secondaryKey);

private: // you may add your own utility member functions here.
    void * findmax(SecondaryNode *root);
    void * findmin(SecondaryNode *root);
    void print_helper(const PrimaryNode * root, int mode);
    void print_helper(const SecondaryNode * root, int mode);
    void * findPrimaryNode(PrimaryNode* root, const std::string &primaryKey);
    void destructNode(PrimaryNode * &root);
    void destructNode(SecondaryNode * &root);

private: // do not change.
    PrimaryNode *root; //designated root.

    // do not provide an implementation. TwoPhaseBST's are not copiable.
    TwoPhaseBST(const TwoPhaseBST &);
    const TwoPhaseBST &operator=(const TwoPhaseBST &);
};

template <class T>
TwoPhaseBST<T>::SecondaryNode::SecondaryNode(const std::string &k, const T &d, SecondaryNode *l, SecondaryNode *r)
        : key(k), data(d), left(l), right(r) {}

template <class T>
TwoPhaseBST<T>::PrimaryNode::PrimaryNode(const std::string &k, PrimaryNode *l, PrimaryNode *r, SecondaryNode *rsn)
        : key(k), left(l), right(r), rootSecondaryNode(rsn) {}

template <class T>
TwoPhaseBST<T>::TwoPhaseBST() : root(NULL) {}

template <class T>
TwoPhaseBST<T>::~TwoPhaseBST() {
    destructNode(root);
}

template <class T>
TwoPhaseBST<T> &
TwoPhaseBST<T>::insert(const std::string &primaryKey, const std::string &secondaryKey, const T &data) {
    /* IMPLEMENT THIS */
    PrimaryNode *temp=root;
    PrimaryNode *pn;
    SecondaryNode *sn, *temp2;

    if(root == NULL){
        sn = new SecondaryNode(secondaryKey, data, NULL, NULL);
        pn = new PrimaryNode(primaryKey, NULL, NULL, sn);
        root = pn;
        return *this;
    }

    if(findPrimaryNode(root, primaryKey) == NULL){
        while(temp){
            if(primaryKey.compare(temp->key)<0){
                if (temp->left!=NULL) temp=temp->left;
                else{
                    sn = new SecondaryNode(secondaryKey, data, NULL, NULL);
                    temp->left = new PrimaryNode(primaryKey, NULL, NULL, sn);
                    break;
                }
            }
                
            else{
                if (temp->right!=NULL) temp=temp->right;
                else{
                    sn = new SecondaryNode(secondaryKey, data, NULL, NULL);
                    temp->right = new PrimaryNode(primaryKey, NULL, NULL, sn);
                    break;
                }
            }
        }
    }

    else{
        temp=(PrimaryNode*)findPrimaryNode(root, primaryKey);
        if(temp->rootSecondaryNode == NULL){
            sn = new SecondaryNode(secondaryKey, data, NULL, NULL);
            temp->rootSecondaryNode=sn;
        }
        else{
            temp2 = temp->rootSecondaryNode;
            while(temp2){
                if(secondaryKey.compare(temp2->key)<0){
                    if (temp2->left!=NULL) temp2=temp2->left;
                    else{
                        sn = new SecondaryNode(secondaryKey, data, NULL, NULL);
                        temp2->left = sn;
                        break;
                    }
                }
                
                else{
                    if (temp2->right!=NULL) temp2=temp2->right;
                    else{
                        sn = new SecondaryNode(secondaryKey, data, NULL, NULL);
                        temp2->right = sn;
                        break;
                    }
                }
            }
        }
    }

    return *this;
}

template <class T>
TwoPhaseBST<T> &
TwoPhaseBST<T>::remove(const std::string &primaryKey, const std::string &secondaryKey) {
    /* IMPLEMENT THIS */
    PrimaryNode *pn;
    SecondaryNode *prev, *deleted, *temp, *temp2;

    if(find(primaryKey,secondaryKey)!=NULL){
        pn=(PrimaryNode*)findPrimaryNode(root, primaryKey);
        temp=pn->rootSecondaryNode;
        if(secondaryKey.compare(temp->key)==0){
            deleted = temp;
            if(deleted->left == NULL && deleted->right == NULL){
                pn->rootSecondaryNode=NULL;
                delete deleted;
            }
            else if(deleted->left == NULL){
            	pn->rootSecondaryNode=deleted->right;
            	delete deleted;
            }
            else if(deleted->right == NULL){
                pn->rootSecondaryNode=deleted->left;
                delete deleted;
            }
            else{
                temp=(SecondaryNode*)findmax(deleted->left);
                if(temp->right==NULL){
                    pn->rootSecondaryNode=temp;
                    temp->right=deleted->right;
                }
                else{
                    temp2=temp->right;
                    pn->rootSecondaryNode=temp2;
                    temp->right=temp2->left;
                    temp2->left=deleted->left;
                    temp2->right=deleted->right;
                }
                delete deleted;
            }
        }
        else{
            while(1){
                if(secondaryKey.compare(temp->key)<0){
                    prev=temp;
                    temp=temp->left;
                }
                else if(secondaryKey.compare(temp->key)>0){
                    prev=temp;
                    temp=temp->right;
                }
                else{
                    deleted=temp;
                    break;
                }
            }
            if(deleted->left == NULL && deleted->right == NULL){
                if(prev->right==deleted)
                    prev->right = NULL;
                else prev->left = NULL;
                delete deleted;
            }
            else if(deleted->left == NULL){
            	prev->right=deleted->right;
            	delete deleted;
            }

            else if(deleted->right == NULL){
                prev->left=deleted->left;
            	delete deleted;
            }
            else{
                temp=(SecondaryNode*)findmax(deleted->left);
                if(temp->right==NULL){
                    if(prev->left == deleted)
                        prev->left = temp;
                    else 
                        prev->right = temp;
                    temp->right=deleted->right;
                    delete deleted;
                }
                else{
                    temp2=temp->right;
                    if(prev->left == deleted)
                        prev->left = temp2;
                    else 
                        prev->right = temp2;
                    temp->right=temp2->left;
                    temp2->left=deleted->left;
                    temp2->right=deleted->right;
                    delete deleted;
                }
            }
        }
    }
    return *this;
}

template <class T>
TwoPhaseBST<T> &TwoPhaseBST<T>::print(const std::string &primaryKey, const std::string &secondaryKey) {
    /* IMPLEMENT THIS */
    if(root == NULL)
        std::cout << "{}" << std::endl;
    else if(primaryKey == "" && secondaryKey ==""){
        std::cout << "{";
        print_helper(root, 0);
        print_helper(root, 1);        
        std::cout << "}" << std::endl;
    }
    else if(secondaryKey == ""){
        PrimaryNode *pn;
        pn=(PrimaryNode*)findPrimaryNode(root, primaryKey);
        if(!pn)
            std::cout << "{}" << std::endl;
        else if(pn->rootSecondaryNode == NULL)
            std::cout << "{\"" << pn->key << "\" : {}}" << std::endl;
        else{
            std::cout << "{\"" << pn->key << "\" : {";
            print_helper(pn->rootSecondaryNode, 0);
            print_helper(pn->rootSecondaryNode, 1);
            std::cout << "}}" << std::endl;
        }
    }
    else{
        PrimaryNode *pn;
        if(find(primaryKey,secondaryKey)==NULL)
            std::cout << "{}" << std::endl;
        else{
            pn=(PrimaryNode*)findPrimaryNode(root, primaryKey);
            std::cout << "{\"" << pn->key << "\" : {\"" << secondaryKey << "\" : \"" << *(find(primaryKey, secondaryKey)) << "\"}}" << std::endl;
        }
    }

    return *this;
}

template <class T>
T *TwoPhaseBST<T>::find(const std::string &primaryKey, const std::string &secondaryKey) {
    /* IMPLEMENT THIS */
    SecondaryNode *sn;
    if(findPrimaryNode(root, primaryKey)==NULL)
        return NULL;
    else{
        sn=((PrimaryNode*)findPrimaryNode(root, primaryKey))->rootSecondaryNode;
        while(sn){
            if(secondaryKey.compare(sn->key)==0)
                return &(sn->data);
            else if(secondaryKey.compare(sn->key)<0)
                sn=sn->left;
            else
                sn=sn->right;
        }
    }
    return NULL;
}

template <class T>
void TwoPhaseBST<T>::destructNode(TwoPhaseBST::PrimaryNode * &root)
{
    if (root == NULL)
        return;

    destructNode(root->left);
    destructNode(root->right);

    destructNode(root->rootSecondaryNode);

    delete root;

    root = NULL;
}

template <class T>
void TwoPhaseBST<T>::destructNode(TwoPhaseBST::SecondaryNode * &root)
{
    if (root == NULL)
        return;

    destructNode(root->left);
    destructNode(root->right);

    delete root;

    root = NULL;
}

template <class T>
void * TwoPhaseBST<T>::findPrimaryNode(PrimaryNode* root, const std::string &primaryKey)
{   
    PrimaryNode *temp=root;

    while(temp){
        if(primaryKey.compare(temp->key)<0){
            temp=temp->left;
        }
        else if(primaryKey.compare(temp->key)>0){
            temp=temp->right;
        }
        else return temp;
    }

    return temp;
}

template <class T>
void TwoPhaseBST<T>::print_helper(const PrimaryNode * root, int mode){
    int static count=0;
    if(mode) 
        count=0;
    else if(root){
        print_helper(root->left, 0);
        if(count)
            std::cout << ", ";
        std::cout << "\"" << root->key << "\" : {";
        count++;
        print_helper(root->rootSecondaryNode, 0);
        print_helper(root->rootSecondaryNode, 1);
        std::cout << "}";
        print_helper(root->right, 0);
    }
}

template <class T>
void TwoPhaseBST<T>::print_helper(const SecondaryNode * root, int mode){
    static int count=0;
    if(mode) 
        count=0;
    else if(root){
        print_helper(root->left, 0);
        if(count)
            std::cout << ", ";
        std::cout << "\"" <<  root->key << "\" : \"" << root->data << "\"";
        count++;
        print_helper(root->right, 0);
    }
}

template <class T>
void * TwoPhaseBST<T>::findmax(SecondaryNode *root){
    SecondaryNode *temp=root;
    while(1){
        if(temp->right)
            return temp;
        else if(temp->right->right)
            return temp;
        else
            temp=temp->right;
    }
}

template <class T>
void * TwoPhaseBST<T>::findmin(SecondaryNode *root){
    SecondaryNode *temp=root;
    while(1){
        if(temp->left)
            return temp;
        else if(temp->left->left)
            return temp;
        else
            temp=temp->left;
    }
}

#endif //TWOPHASEBST_H

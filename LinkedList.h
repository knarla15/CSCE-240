
#ifndef LINKEDLIST_H
#define LINKEDLIST_H

#include <cstdlib>
#include <iostream>
#include "Node.h"

using namespace std;

class LinkedList{
	
	public:
		
		LinkedList();
		LinkedList(const LinkedList*);
		~LinkedList();
		void Insert(int, int);
		void Remove(int);
		void Print() const;
		int Get(int) const;
		int Find(int) const;
		void Append(int);
		int GetSize();
		void SetSize(int) const;
		
	private:
		int size;
		Node* head;
		Node* tail;
	
};

#endif



#ifndef NODE_H
#define NODE_H

#include <cstdlib>
#include <iostream>

using namespace std;

class Node{
	
	public:
		
		Node();
		Node(int);
		Node(int, Node*);
		Node(const Node *);
		~Node();
		void Print();
		void SetNextNode(Node *);
		Node* GetNextNode() const;
		int GetValue() const;
		void SetValue(int);
	
	private:
		int value;
		Node *nextNode;
	
};

#endif

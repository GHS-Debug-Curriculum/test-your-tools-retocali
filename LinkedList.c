#include<stdio.h>
#include<stdlib.h>
// Whatssupppppspspsspspspsp
typedef struct node {
  int val;
  struct node* next;
} Node;

Node* addHead(Node* head, int val)
{
  Node* newHead = malloc(sizeof(Node));
  if (newHead == NULL)
    {
      perror("addHead");
      exit(EXIT_FAILURE);
    }
  newHead->val = val;
  newHead->next = head;
  return newHead;
}

static Node* addThirdHelper(Node* head, int val, int i)
{
  if (i != 0)
    {
      head->next = addThirdHelper(head->next, val, i - 1);
    }
  else
    {
      head = addHead(head, val);
    }
  return head;
}

Node* addThird(Node* head, int val)
{
  return addThirdHelper(head, val, 3);
}

void printList(Node* head)
{
  if (head)
    {
      printf("%d\n", head->val);
      printList(head->next);
    }
}

int main()
{
  Node* list = NULL;
  list = addHead(list, 3);
  list = addHead(list, 2);
  list = addHead(list, 1);
  list = addHead(list, 0);
  list = addThird(list, 4);
  printList(list);
  return 0;
}

#include<stdlib.h>
#include<stdio.h>
#include<string.h>

int main()
{
  char* str = NULL;
  printf("Hello world!\n");
  printf("I'm about to do some fun string things!\n");
  str = "I am a Fun string!";
  printf("%s\n", str);
  printf("My size is %u.\n", (unsigned int) strlen(str));
  printf("The first word is '%s'.\n", strtok(str, " \t\n"));
  printf("My seventh character is '%c'.\n", str[7]);
  return 0;
}

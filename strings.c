#include <stdio.h>
#include <string.h>
int main()
{
   char c[10]="am madhan";
   char ch[10]="madhan";
   int i,count=0;
   for(i=0;c[i]!='\0';++i)
   {
       if(ch==c[i])
           ++count;
   }
   printf("Frequency of %s = %d", ch, count);
}
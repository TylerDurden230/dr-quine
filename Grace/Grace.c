#include <stdio.h>
#define CODE "#include <stdio.h>%c#define CODE %c%s%c%c#define RET return(0);%c#define DEFINITELYNOTMAIN()int main(void){ FILE *f = fopen(%cGrace_kid.c%c, %cw%c); if (f == NULL) return (1); fprintf(f, CODE, 10, 34, CODE, 34, 10, 10, 34, 34, 34, 34, 10, 10, 10, 10, 10, 10);fclose(f);RET}%c%c/*%c   A comment is required so...%c*/%c%cDEFINITELYNOTMAIN()"
#define RET return(0);
#define DEFINITELYNOTMAIN()int main(void){ FILE *f = fopen("Grace_kid.c", "w"); if (f == NULL) return (1); fprintf(f, CODE, 10, 34, CODE, 34, 10, 10, 34, 34, 34, 34, 10, 10, 10, 10, 10, 10);fclose(f);RET}

/*
   A comment is required so...
*/

DEFINITELYNOTMAIN()
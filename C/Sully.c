#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int
	main(void)
{
	register int x = 5;

	if (x <= 0)
		return (0);

	char *code = "#include <stdio.h>%1$c#include <stdlib.h>%1$c#include <unistd.h>%1$c%1$cint%1$c	main(void)%1$c{%1$c	register int x = %4$d;%1$c%1$c	if (x <= 0)%1$c		return (0);%1$c%1$c	char *code = %2$c%3$s%2$c;%1$c	char compile[80];%1$c	char execute[50];%1$c	char name[50];%1$c%1$c	if (access(%2$cSully_5.c%2$c, R_OK) == 0)%1$c		x--;%1$c%1$c	snprintf(name, sizeof(name), %2$cSully_%%d.c%2$c, x);%1$c	snprintf(compile, sizeof(compile), %2$cgcc -Wall -Wextra -Werror Sully_%%d.c -o Sully_%%d%2$c, x, x);%1$c	snprintf(execute, sizeof(execute), %2$c./Sully_%%d%2$c, x);%1$c%1$c	FILE *file = fopen(name, %2$cw%2$c);%1$c%1$c	if (!file)%1$c		return (1);%1$c%1$c	fprintf(file, code, 10, 34, code, x);%1$c	fclose(file);%1$c%1$c	system(compile);%1$c	system(execute);%1$c	return (0);%1$c}%1$c";
	char compile[80];
	char execute[50];
	char name[50];

	if (access("Sully_5.c", R_OK) == 0)
		x--;

	snprintf(name, sizeof(name), "Sully_%d.c", x);
	snprintf(compile, sizeof(compile), "gcc -Wall -Wextra -Werror Sully_%d.c -o Sully_%d", x, x);
	snprintf(execute, sizeof(execute), "./Sully_%d", x);

	FILE *file = fopen(name, "w");

	if (!file)
		return (1);

	fprintf(file, code, 10, 34, code, x);
	fclose(file);

	system(compile);
	system(execute);
	return (0);
}

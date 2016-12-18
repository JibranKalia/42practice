#include "main.h"
#include <stdio.h>

char 	*ft_strrev(char *str)
{
	int end, a;
	end = 0;
	char revstr;

	while (str[end] != '\0')
	{
		end++;
	}

	a = 0;
	end = end - 1;

	while (a < end)
	{
		revstr = str[end];
		str[end] = str[a];
		str[a] = revstr;

		a++;
		end--;
	}
	printf("%s\n", str);
	return(str);
}

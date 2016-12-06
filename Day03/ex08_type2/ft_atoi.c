#include "main.h"
#include <stdio.h>

int	ft_atoi(char *str)
{
	int signflag;
	int i;
	int ret;

	i = 0;

	while (*str == ' ' || *str == '\f' || *str == '\t'
			|| *str == '\n' || *str == '\r' || *str == '\v')
			str++;

	if (*str == '-'){
		signflag = 1;
		str++;
	}

	else if (*str == '+') str++;

	while (*str == '0') str++;

	while (str[i] >= 48 && str[i] <= 57)
	{
		ret = (ret * 10) + (str[i] - '0');
		i++;
	}

	if (signflag == 1)
		return (-ret);
	else
		return (ret);
}

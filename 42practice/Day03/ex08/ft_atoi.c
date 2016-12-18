#include "main.h"
#include <stdio.h>

int ft_char2int(char *str, int i, int len)
{
	int result;
	while (i < len)
	{
		result = (result * 10) + (str[i] - '0');
		i++;
	}
	return (result);
}

int	ft_atoi(char *str)
{
	int len,final;
	len = 0;

	while (str[len] != '\0')
	{
		len++;
	}

	if (str[0] == '-')
	{
		final = ft_char2int(str, 1, len);
		final = final * -1;
	}

	else if (str[0] == '+')
	{
		final = ft_char2int(str, 1, len);
	}

	else
	{
		final = ft_char2int(str, 0, len);
	}

	return (final);
}

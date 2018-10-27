#include <libft.h> 
#include <stdio.h>

long	ft_power(long nb, int power)
{
	int		i;
	long 	ret;

	i = -1;
	ret = 1;
	while (++i < power)
		ret = ret * nb;

	return (ret);
}

int		main(void)
{
	long	ret;

	ret = ft_power(0, 2);
	printf("%ld", ret);
	return (0);

}

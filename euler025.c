
#include <stdio.h> 

int	ft_fibonacci(int nb)
{
	if (nb < 0)
		return (-1);
	if (nb <= 2)
		return (nb);

	return(ft_fibonacci(nb - 1) + ft_fibonacci(nb - 2));
}

int	main(void)
{
	printf("%d", ft_fibonacci(11));
	return (0);

}

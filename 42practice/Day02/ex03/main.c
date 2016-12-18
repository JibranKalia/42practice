#include "main.h"
#include <unistd.h>

int main(void){

	write(1,"Test for positive: ",19);
	ft_is_negative(5);

	write(1,"\nTest for null: ",16);
	ft_is_negative(0);

	write(1,"\nTest for negative: ",25);
	ft_is_negative(-5);

	return 0;
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: frueda-m <frueda-m@student.42malaga.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/09 02:15:05 by frueda-m          #+#    #+#             */
/*   Updated: 2022/11/09 02:25:21 by frueda-m         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_ndigits(int n)
{
	size_t	order;

	if (!n)
		return (1);
	order = 0;
	if (n < 0)
		order++;
	while (n != 0)
	{
		order++;
		n /= 10;
	}
	return (order);
}

char	*ft_itoa(int n)
{
	size_t	order;
	char	d;
	char	*str;

	order = ft_ndigits(n);
	str = (char *) malloc(sizeof(char) * (order + 1));
	if (str == NULL)
		return (NULL);
	str[order] = '\0';
	if (n < 0)
		str[0] = '-';
	if (n == 0)
		str[--order] = '0';
	while (n != 0)
	{
		d = n % 10;
		if (d < 0)
			d = -d;
		str[--order] = d + '0';
		n /= 10;
	}
	return (str);
}

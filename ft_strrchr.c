/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: frueda-m <frueda-m@student.42malaga.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/05 17:47:38 by frueda-m          #+#    #+#             */
/*   Updated: 2022/11/05 17:51:37 by frueda-m         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strrchr(const char *str, int c)
{
	const char	*s;

	s = str;
	while (*str)
		str++;
	while (str >= s)
		if (*str-- == (char)c)
			return ((char *)str + 1);
	return (0);
}

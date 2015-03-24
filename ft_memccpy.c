/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memccpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eteyssed <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/24 15:41:08 by eteyssed          #+#    #+#             */
/*   Updated: 2015/03/24 15:42:14 by eteyssed         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void				*ft_memccpy(void *dst, const void *src, int c, size_t n)
{
	unsigned char		*strdst;
	const unsigned char	*strsrc;
	unsigned char		car;

	strdst = (unsigned char*)dst;
	strsrc = (const unsigned char*)src;
	car = (unsigned char)c;
	while (n--)
	{
		if ((*strdst++ = *strsrc++) == car)
			return (strdst);
	}
	return (NULL);
}

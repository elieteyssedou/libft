/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eteyssed <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/24 15:43:14 by eteyssed          #+#    #+#             */
/*   Updated: 2015/03/24 15:43:17 by eteyssed         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int		ft_scan(const char *s1, const char *s2)
{
	int		i;

	i = 0;
	while (s2[i])
	{
		if (s1[i] != s2[i])
			return (0);
		i++;
	}
	return (1);
}

char			*ft_strstr(const char *s1, const char *s2)
{
	int		i;
	char	*str;

	str = (char*)s1;
	if (!*s2)
		return (str);
	i = 0;
	while (str[i])
	{
		if (str[i] == s2[0])
			if (ft_scan(&str[i], s2))
				return (&str[i]);
		i++;
	}
	return (NULL);
}

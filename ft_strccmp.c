/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strccmp.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tkiselev <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/05/26 20:09:15 by tkiselev          #+#    #+#             */
/*   Updated: 2018/05/26 20:15:27 by tkiselev         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		ft_strccmp(const char *s1, const char *s2, char c)
{
	int i;

	i = 0;
	while ((char)s1[i] == (char)s2[i] && s1[i] && s2[i] &&
	(char)s1[i] != c && (char)s2[i] != c)
		i++;
	return ((char)s1[i] - (char)s2[i]);
}
/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bjacobs <bjacobs@student.codam.nl>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/25 16:45:12 by bjacobs           #+#    #+#             */
/*   Updated: 2022/11/04 16:00:47 by bjacobs       ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstclear(t_list **lst, void (*del)(void *))
{
	t_list	*fptr;
	t_list	*ptr;

	if (lst && del)
	{
		ptr = *lst;
		while (ptr)
		{
			fptr = ptr;
			ptr = ptr->next;
			ft_lstdelone(fptr, del);
		}
		*lst = NULL;
	}
}

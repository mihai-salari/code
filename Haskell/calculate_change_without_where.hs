-- calculate_change_without_where.hs

calcChange2 owed given = 
	if given - owed > 0
		then given - owed
	else
		0
-- calculate_change.hs

calChange owed given =
	if change > 0
		then change
	else
		0
	where change = given - owed
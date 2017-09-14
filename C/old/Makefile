first:
	git add . && git commit -m 'First commit' && git push -u origin master
	
push:
	@if [ "x$(MSG)" = 'x' ]; then echo "Usage: MSG='your commit message' make push"; fi
	@test "x$(MSG)" != 'x'
	git commit -a -m "$(MSG)" && git push -u origin master
#!/usr/bin/env ruby

database = ARGV.shift
username = ARGV.shift
password = ARGV.shift
end_of_iteration = ARGV.shift

if end_of_iteration.nil?
		backup_file = database + '_' + Time.now.strftime('%Y%m%d')
else
		backup_file = database + '_' + end_of_iteration
end

`/Applications/MAMP/Library/bin/mysqldump -u#{username} -p#{password} #{database} > #{backup_file}.sql`
`gzip #{backup_file}.sql`

puts "=> creates #{backup_file}.sql.gz"
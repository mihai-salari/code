#!/usr/bin/env ruby

databases = {
	big_client: {
		database: 'big_client',
		username: 'root',
		password: 'root',
	},
	small_client: {
		database: 'small_client',
		username: 'root',
		password: 'root',
	}
}

end_of_iteration = ARGV.shift

databases.each do |name, config|
	if end_of_iteration.nil?
		backup_file = config[:database] + '_' + Time.now.strftime('%Y%m%d')
	else
		backup_file = config[:database] + '_' + end_of_iteration
	end

	mysqldump = "/Applications/MAMP/Library/bin/mysqldump -u#{config[:username]} -p#{config[:password]} " + "#{config[:database]}"

	`#{mysqldump} > #{backup_file}.sql`
	`gzip #{backup_file}.sql`

	puts "=> creates #{backup_file}.sql.gz"
end
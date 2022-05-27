def argument 
	if(ARGV.length < 2 && ARGV[0].split(' ').length < 2)
		puts "mettez plus d'arguments"
	else
		param
	end
end

def param
	for i in (ARGV.length() -1).downto(0)
		puts ARGV[i]
	end
end

argument
def argument
	saisie = /\A[-+]?\d+\z/
	faux = 0

	if(ARGV.length != 1 || ARGV[0][0] == '+' || ARGV[0][0] == '-')
		puts "error"
	else
		for i in 0..(ARGV.length() -1)
			if(ARGV[i].match?(saisie) == false )
				faux +=1
			end
		end
		if(faux != 0)
			puts "false"
		else
			puts "true"
		end
	end
	
end

argument
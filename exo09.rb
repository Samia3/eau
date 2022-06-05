def argument
	saisie = /\A[-+]?\d+\z/

	if(ARGV.length != 2 || ARGV[0].match?(saisie) == false || ARGV[1].match?(saisie) == false)
		puts "error"
	else
		calcule
	end		
end

def calcule
	str1 = ARGV[0].to_i
	str2 = ARGV[1].to_i

	if(str1 > str2)
        tmp = str1
        str1 = str2
        str2 = tmp
    end

	i = str1
	while(i<str2)
		print i.to_s + ' '
		i+=1
	end
	
	print "\n"
end

argument
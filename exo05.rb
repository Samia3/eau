def argument
	saisie = /\A[-+]?\D+\z/

	if(ARGV.length != 2 || ARGV[0].split(' ').length != 1 || ARGV[1].split(' ').length != 1)
		puts "error"
	elsif(ARGV[0].match?(saisie) == false || ARGV[1].match?(saisie) == false)
		puts "error"
	else
		string
	end
end

def string
	str1 = ARGV[0]
	str2 = ARGV[1]
	
	for i in 0..(str1.length() -1)
		if(str2[0] == str1[i])
			k=i
			faux = 0
			j=0
			while(j<str2.length())
				if(str2[j] != str1[k])
                    faux +=1
                end
                k+=1
				j+=1
			end	
			if(faux != 0)
                puts "error"
            else
                puts "true"
            end	
		end
		
	end
	
end

argument
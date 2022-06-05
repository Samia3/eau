def argument
	saisie = /\A[-+]?[[:alpha:]]+\z/
    faux = 0

    i=0
    while(i<ARGV.length())
     
        if(ARGV[i].match?(saisie) == false)

            faux += 1
        end
        i+=1
    end
    
    if(ARGV.length < 2 || faux != 0)
        puts "-1"
    else
        index_wanted
    end
end

def index_wanted
	str = ARGV[-1]
	vrai = 0

	for i in 0..(ARGV.length() -2)
		if(str == ARGV[i])
			puts i
			vrai += 1
			break
		end
	end
	
	if(vrai == 0)
		puts "-1"
	end
end

argument
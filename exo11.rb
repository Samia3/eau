def argument
	saisie = /\A[-+]?\d+\z/
	faux = 0

	for i in 0..(ARGV.length() -1)
		if(ARGV[i].match?(saisie) == false)
			faux += 1
		end
	end
	
	if(ARGV.length < 3 || faux != 0)
		puts "error"
	else
		diff_min
	end
end

def diff_min
	tab = ARGV.map(&:to_i).sort
		
	j=0
	variable = []
	while(j<tab.length - 1)
			
		variable << (tab[j+1] - tab[j])

		j+=1
	end
	
	output = variable.sort
	puts output[0]
end

argument
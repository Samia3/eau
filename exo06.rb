def argument
	saisie = /\A[-+]?\D+\z/

	if(ARGV.length != 1)
		puts "mettez votre texte entre guillemets"
	elsif(ARGV[0].match?(saisie) == false)
		puts "error"
	else
		majuscule
	end
end

def majuscule
	phrase = ARGV[0]
	resultat = ''
	j = 0

	for i in 0..(phrase.length() -1)
		if(phrase[i] != ' ')
			if(j%2 == 0)
				resultat += phrase[i].upcase
			else
				resultat += phrase[i].downcase
			end
			j+= 1
		else
			resultat += ' '
		end
	end
	puts resultat
end

argument
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
	phrase = ARGV[0].split(' ')
	resultat = ''
	

	for i in 0..(phrase.length() -1)
		resultat += phrase[i][0].upcase
		for j in 1..(phrase[i].length() -1)
			resultat += phrase[i][j].downcase
		end
		resultat += ' '
	end
	puts resultat
end

argument
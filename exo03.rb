def argument
	saisie = /\A[-+]?\d+\z/

	if(ARGV.length != 1 || ARGV[0].match?(saisie) == false)
		puts "error"
	else
		fibonacci
	end
end

def fibonacci
	n=ARGV[0].to_i

	f0 = 0
	f1 = 1
	fibo = 

	i=1
	while(i<n)
		fibo = f0 +f1
		f0 = f1
		f1 = fibo

		i+=1
	end
	puts f1
end

argument
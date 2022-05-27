def argument
	saisie = /\A[-+]?\d+\z/

	if(ARGV.length != 1 || ARGV[0].match?(saisie) == false || ARGV[0].split(' ').length != 1)
		puts "error"
	else
		premier
	end
end

def premier
	number = ARGV[0].to_i
    nombre = number + 1

    flag = true

    while(flag)
        flag = false
        n = Integer.sqrt(nombre)
        i=2
        while(i<=n)
            if(nombre%i == 0)
                
                flag = true
                nombre = nombre +1
            end
            i+=1
        end
        
    end
     puts nombre
end

argument
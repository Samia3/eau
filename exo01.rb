for i in 0..9
	for j in 0..9
		for k in 0..9
			for l in 1..9
				if((k+l)>(i+j))
					print "#{i}" + "#{j}" + " " + "#{k}" + "#{l}" + " ,"
				end
			end
		end
	end
end

print "\n"
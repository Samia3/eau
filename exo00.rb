for i in 0..9
	for j in 0..9
		for k in 0..9
			if(i<j && j<k)
				var = "#{i}" + "#{j}" + "#{k}" + " ,"
				print var
			end
		end
	end
end
print "\n"
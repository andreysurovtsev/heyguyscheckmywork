def neko(eps)
	n = 1.0
	y = 0
	loop do 
		y = (n / ((n * n) + 2))
		break if y < eps
		n += 1
	end
	[n.to_i, y]
end

def neko2(ksi)
	generate_serie = Enumerator.new do |yielder|
		n = 1
		loop do
			nf = n.to_f
			yielder.yield [n, (nf / (nf*nf + 2))]
			n += 1
		end
	end

	generate_serie.find {|n, y| y < ksi}
end

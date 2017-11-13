# https://gist.github.com/rysk-t/8d1aef0fb67abde1d259 

def root_lambda(a, b, f = nil)
	step = 0.1
	
	#num = (b.to_f-a.to_f) / step
	#arr = [*0..num]
	#arr = arr.collect{|i| a + i.to_f*step}

	arr = []
	x = a
	while x <= b
		arr.push x
		x += step
	end

	p (arr.collect do |x|
		if f == nil
			[x, (yield x)] 
		else
			[x, f.call(x)] 
		end
	end).min { |a, b| (a[1].abs <=> b[1].abs) }

end

f1 = lambda { |x| x*x + Math.sin(x/2) }

a = -4
b = 4
root_lambda(a, b, f1)
root_lambda(a, b) {|x| Math.atan(x) + x - 1}
root_lambda(a, b) {|x| x*x - 2 }

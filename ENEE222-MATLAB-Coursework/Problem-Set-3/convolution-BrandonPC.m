function y = convolution(h,x)
	tic
	N = length(h);
	M = length(x);
	Y = M + N - 1;% length of the output y
	y = zeros(Y);
	x = [x zeros(1,M-1)]; %pads more zeros   
	for j = 1:N
		for k = 1:j
			y(j) = y(j) + x(k)*h(j-k+1)
		end
	end
	toc
	plot(y);
end

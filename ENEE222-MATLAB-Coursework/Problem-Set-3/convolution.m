% t is less than 0
%compute integration and then input into this fuction, multiply by unit
%step to make t < 0 negative
function y = question4(t,f)
    y = -exp(-t)/2;%compute fourier transform
    z = -1/2*(1/(1+i*4*pi*f))
    plot(t,y)
    u = 1/(1 + 4*i*pi*f);
    plot(f,abs(u)^2)
end
 
function y = question5(a,b,f)
    u = a/(b + i*2*pi*f);
    plot(f,abs(a)/(b^2 + (2*pi*f)^2))%plotting the magnitude of the signal
    if (a > 0)
        plot(f,arctan(2*pi*f)/b)
    else
        plot(f,pi + arctan(2*pi*f)/b)
    end
    bode(f,u)
end 


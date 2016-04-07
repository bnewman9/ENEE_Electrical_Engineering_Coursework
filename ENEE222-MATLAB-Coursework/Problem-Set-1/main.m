function y = fun1(a,y0,f)%a and y0 are scalar, and f is a vector
    N = length(f);
    y(1) = y0; %Set the initial condition
    for ii = 1:N
        y(ii+1) = a*y(ii) + f(ii);
    end
    figure; plot(y)
end

%determines whether the output is stable or not
%isstable(fun1(a,y0,f))
function x = isstable(y)
    N = length(y);%Gettign the length of vector y
    y_abs = abs(y);%Getting the 
    L1 = 1:floor(N/2);
    L2 = ciel(N/2+1):N;
    m1 = max(y_abs(L1));
    m2 = max(y_abs(L2));
    if m1 > m2
        x = 'stable';
    else
        x = 'unstable';
    end
    display(x) %display whether stable or unstable
end

function beatrate = fun3()
    Signal = load('ecg.txt');
    N = length(Signal); %total number of samples
    Fs = 100;  %sampling frequency = 100Hz or # of samples per second
    Ts = 1/Fs;
    duration = N/Fs;
    t = Ts : Ts : duration;  %(duration - Ts)/Ts = ((N/Fs) - Ts)/Ts
    figure;
    plot(t,Signal)
    figure;
    plot(t(1:200),Signal(1:200))
    counter = 1;% Set the counter
    index = [];
    for ii = 2:N-1
        if Signal(ii) > Signal(ii-1) && Signal (ii) > Signal(ii+1) && Signal(ii) > 1
			index(counter) = ii;
            counter = counter + 1;
        end
    end
    beatrate = length(index)/duration;
    t_peaks = t(index);
    figure;
    plot(diff(t_peaks)) %Plot the peaks
end

function main
    isstable(fun1(-1/2,1,10.^-[0:20]));
    fun3();
end

function Question5
    close all;n=10^6;x=rand(n,1);hist(x,100);grid
    close all;n=10^6;x=randn(n,1);hist(x,100);grid
    
    close all;n=10^7;x=1*randn(n,1)+3;hist(x,1000);grid
    close all;n=10^7;x=6*randn(n,1)+18;hist(x,1000);grid
    close all;n=10^7;x=20*randn(n,1)+60;hist(x,1000);grid
    close all;n=10^7;x=20*randn(n,1)+6;hist(x,1000);grid
end

    
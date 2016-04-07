function bode_Plot = problem1a(omega, sigma) 
    num = (omega^2); %numerator of the tranfer function.
    den = [s + 2*omega*sigma - omega^2]; %denominator of the transfer function.
    H = tf(num, den); %transfer function
    bode(H) %bode plot of transfer function
end


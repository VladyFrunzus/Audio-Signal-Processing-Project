function y = gate(t, duty)

y = 0.5 * (square(t, duty) + 1);

end
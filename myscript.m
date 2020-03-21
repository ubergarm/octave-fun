# octave script for fun and profit

# size of mask (desired output matrix size)
masksize = 512;

# desired scale factor
scale = 2;

# create a meshgrid over which to evaluate the functions
x = linspace(-scale, scale, masksize);
y = x;
[X,Y] = meshgrid(x);

# evaluate a given function
F = X .* exp(-X .^ 2 - Y .^ 2);

# plot the given function
aux=figure();
surf(X,Y,F);
shading interp;
saveas(aux, '/data/output.png', 'png');

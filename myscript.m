# octave script for fun and profit

# size of mask (desired output matrix size)
masksize = 512;

# desired scale factor
scale = 10;

# create a meshgrid over which to evaluate the functions
x = linspace(-scale, scale, masksize);
y = x;
[X,Y] = meshgrid(x);

# evaluate a given input function
F = X .* exp(-X .^ 2 - Y .^ 2);

# make a 3d surface plot the given input function
infig=figure();
surf(X,Y,F);
shading interp;
saveas(infig, '/data/input.png', 'png');

# make a 2d image plot of magnitude of 2D FFT of above input function
outfig=figure();
DP = fftshift(fft2(F));
imagesc(abs(DP));
axis image;
saveas(outfig, '/data/output.png', 'png');

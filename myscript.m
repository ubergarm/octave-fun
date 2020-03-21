# octave script for fun and profit

clear all;
x = 1:10;
y = 1:10;
aux=figure();
plot(x,y,'k-');
saveas(aux, '/data/output.png', 'png');

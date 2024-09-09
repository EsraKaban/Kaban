x = [ones(1,1000) 2*ones(1,1000) 3*ones(1,1000)];
y1 = 2 * randn(1,1000);
y2 = 3 * randn(1,1000) + 5;
y3 = 5 * randn(1,1000) + 5;
y = [y1 y2 y3];
swarmchart(x,y)
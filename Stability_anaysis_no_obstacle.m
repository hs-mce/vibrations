function z = Stability_anaysis_no_obstacle(t,x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

global alpha

%a=1600;b=0.05;
sigma=0.001;

%k_1=1-sqrt(1-b); k_2 = - pi/(2*a*sqrt(1-b));

B=4.2776; D=3.2057; omega=alpha;
%B = 4.4557; D = 3.489;  omega=alpha;     %F=1; alpha= 3.3;
%B = 3.635; D = 0;  omega=alpha;     %F=1; alpha=3.2
%B = 2.310573613126549; D = 0;  omega=alpha;     %F=1;

z(1)=x(2);

z(2) = -0.9e1 / 0.4e1 * pi ^ 4 * sigma * D*sin(omega*t) ^ 2 * x(1) - 0.3e1 / 0.4e1 * x(1) * pi ^ 4 * sigma * B*cos(omega*t) ^ 2 - pi ^ 2 * x(1) - 0.3e1 / 0.2e1 * pi ^ 4 * sigma * D*sin(omega*t) * B*cos(omega*t) * x(3);

z(3)=x(4);

z(4) =  -0.3e1 / 0.4e1 * pi ^ 4 * sigma * D*sin(omega*t) ^ 2 * x(3) - 0.9e1 / 0.4e1 * pi ^ 4 * sigma * B*cos(omega*t) ^ 2 * x(3) - pi ^ 2 * x(3) - 0.3e1 / 0.2e1 * pi ^ 4 * sigma * D*sin(omega*t) * x(1) * B*cos(omega*t);


z=[z(1);z(2);z(3);z(4)];

end


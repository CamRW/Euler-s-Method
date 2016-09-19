%   Written by: Cameron Weigel
%
%   TITLE:
%
%   Euler's Method for solving ODEs
%
%   GOAL:
%
%   Solve f(t,y) = y'(t) 1st Order ODEs

function [TS WS] = Euler(f,a,b,h,alpha)

%
%
%

%%   Inputs:
%%
%%   f is a function handle that takes a 1st Order ODE  as input
%%   [a,b] is the interval chosen for the 1st Order ODE
%%   h is the stepsize used to approximate the points of the equation y(t) 
%%   alpha is the initial condition in the ODE

%
%
%

%%   Output:

%%   TS is a vector containing the interval [a,b] partitioned by h
%%   WS is a vector containing approximations to the solution at the TS partitions


format long; % Allows more precision
w = alpha; % Initial condition
i = 1; % This will be our iterator variable
t = a; % Beginning of our interval
ws(1) = w;
ts(1) = a;



while (t < b)  % While we are still in our interval divided by the stepsize

	w = w + h*(f(t,w)); % Euler Iteration 
	t = a+i*h; % Increase the partition we are iterating over


	ts(i+1) = t; % Save our partitions in a vector
	ws(i+1) = w; % Save our approximations in a vector


	i = i+1; % Increase our iterator by 1

end

TS = ts; % Output our partitioned interval
WS = ws; % Output our approximations

%
%   Below is the subroutine that plots the approximation of the solution to the ODE
%

figure;
plot(TS,WS);

title(['Euler Approximation of the solution with '  num2str(h) ' step size'])

print('Eulerplot','-dpng');

end

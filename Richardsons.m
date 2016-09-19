%Applies Richardson's first extrapolation to two vectors


% INPUTS:
%
%	Two vectors WS1 with step size h, and WS2 with step size h/2
%
%
%
% OUTPUT:
%
%	Vector RS with the first Richardson Extrapolation of WS1 & WS2
%



function [RS] = Richardsons(WS1,WS2)

format long;
n = length(WS1);
k = length(WS2);

rs = zeros(n,1);
rs(1)=WS1(1);



for i = 2:n

	if (2*i < k)
		rs(i)=WS2(2*i)+(WS2(2*i)-WS1(i));

	end
end


RS = rs;

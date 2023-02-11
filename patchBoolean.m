function h = patchBoolean(x,y_bool,magnitude,color)
%PATCHBOOLEAN Plot boolean variable as background patches
%   Detailed explanation goes here

if nargin<4
    color = [0.7 0.7 0.7];
end

if nargin<3
    magnitude = 100;
end

x = reshape(x,1,[]);
y_bool = reshape(y_bool,1,[]);

y_change = [y_bool(1), diff(y_bool)~=0];
x_sel = x(y_change);
y_sel = y_bool(y_change);

if y_bool(end)
    x_sel(end+1) = x(end)+(x(end)-x(end-1));
    y_sel(end+1) = true;
end

numpol = length(x_sel)/2;

xdata = repelem(x_sel,2);
ydata = magnitude*repmat([-1 1 1 -1],1,numpol);

h = patch(xdata,ydata,color,'LineStyle','none','HandleVisibility','off');
set(gca, 'Layer', 'top');
yticklabels('auto')

end


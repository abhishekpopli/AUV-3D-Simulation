%function plotter(time,xdata,ydata,thetadata,n)
len = 3.5;

timelist=[0 0.2 0.3 0.5 0.7 1.0 1.4 1.7];
xdata = [10 13 15 12 9 5 8 12];
ydata = [10 8 5 3 6 9 12 15];
thetadata = [20 30 50 80 100 120 150 110];
n=8;
% s.len(i)s.len(is.len(i)s.len(i)
i = 750;
lp = 100;
timelist = s.time(1:lp,i);
xdata = s.xdata(1:lp,i);
ydata = -s.zdata(1:lp,i);
thetadata = -s.theta(1:lp,i);
% time =timelist(1);
% % time = temptime;
% xdata = tempx;
% % ydata = -tempz;
% thetadata = temptheta;
n = 50;
for p = 1:n
    x=xdata(p);
    y=ydata(p);
    theta=thetadata(p);
    xpts1 = [(x + (len/2)*cos(theta))  (x+0.75*cos(theta) - 0.5*sin(theta)) (x+0.75*cos(theta) + 0.5*sin(theta)) (x + (len/2)*cos(theta))];
    ypts1 = [(y + (len/2)*sin(theta))  (y+0.75*sin(theta) + 0.5*cos(theta)) (y+0.75*sin(theta) - 0.5*cos(theta)) (y + (len/2)*sin(theta))];
    xpts2 = [(x - (len/2)*cos(theta))  (x-1.25*cos(theta) - 0.5*sin(theta)) (x-1.25*cos(theta) + 0.5*sin(theta)) (x - (len/2)*cos(theta))];
    ypts2 = [(y - (len/2)*sin(theta))  (y-1.25*sin(theta) + 0.5*cos(theta)) (y-1.25*sin(theta) - 0.5*cos(theta)) (y - (len/2)*sin(theta))];
    xpts3=[(x+0.75*cos(theta) - 0.5*sin(theta)) (x+0.75*cos(theta) + 0.5*sin(theta)) (x-1.25*cos(theta) + 0.5*sin(theta)) (x-1.25*cos(theta) - 0.5*sin(theta)) (x+0.75*cos(theta) - 0.5*sin(theta))];
    ypts3=[(y+0.75*sin(theta) + 0.5*cos(theta)) (y+0.75*sin(theta) - 0.5*cos(theta)) (y-1.25*sin(theta) - 0.5*cos(theta)) (y-1.25*sin(theta) + 0.5*cos(theta)) (y+0.75*sin(theta) + 0.5*cos(theta))];
    plot(xpts1,ypts1,'r',xpts2,ypts2,'b',xpts3,ypts3,'g',x,y,'o');
    axis([min(xdata)/2 max(xdata)/2 min(ydata)/2 max(ydata)/2]);
%     disp(x)
%     disp(y)
%     disp(theta)
    if(p~=n)
        pause(1);
    end
end
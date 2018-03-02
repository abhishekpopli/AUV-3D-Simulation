avg=[];

for i =1:1681
    m=[];
    for k=-5:0
        m= [m,s.theta(s.len(i)+k,i)] ;
    end
    m = s.theta(s.len(i)-5:s.len(i),i);
    avg(i) = mean(m);
end
plot(s.xg,avg,'.')
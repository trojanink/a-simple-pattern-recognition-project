rng(0);

mu = [0 0];
SIGMA = [0.6 0; 0 0.6];
l = mvnrnd(mu,SIGMA,250);
%plot(l(:,1),l(:,2),'+')

mu = [2 2];
SIGMA = [0.6 0; 0 0.6];
s = mvnrnd(mu,SIGMA,250);
%plot(s(:,1),s(:,2),'r*')

mu = [2 0];
SIGMA = [0.6 0; 0 0.6];
r = mvnrnd(mu,SIGMA,250);
%plot(r(:,1),r(:,2),'go')

mu = [4 2];
SIGMA = [0.6 0; 0 0.6];
f = mvnrnd(mu,SIGMA,250);
%plot(f(:,1),f(:,2),'yv')

%%%%%%A3
x=0;
for i=1:250,
    x = l(i,:) +x;
end
m1 = x/250;

x=0;

for i=1:250,
    x = (l(i,:) - m1)'*(l(i,:) - m1);
end
s1 = x/250;

x=0;
for i=1:250,
    x = s(i,:) +x;
end

m2 = x/250;

x=0;

for i=1:250,
    x = (s(i,:) - m2)'*(s(i,:) - m2);
end
s2 = x/250;

x=0;
for i=1:250,
    x = r(i,:) +x;
end
m3 = x/250;

x=0;

for i=1:250,
    x = (r(i,:) - m3)'*(r(i,:) - m3);
end
s3 = x/250;

x=0;
for i=1:250,
    x = f(i,:) +x;
end
m4 = x/250;

x=0;

for i=1:250,
    x = (f(i,:) - m4)'*(f(i,:) - m4);
end
s4 = x/250;



%%%%%%A4

for i=1:250,
   d1 = norm(l(i,:)-m1); 
   d2 = norm(l(i,:)-m2); 
   d3 = norm(l(i,:)-m3); 
   d4 = norm(l(i,:)-m4); 

    min=d1;
    
    if(d2<min)
        min=d2;
    end
    
     if(d3<min)
        min=d3;
     end
    
     if(d4<min)
        min=d4;
     end
     
    if(min==d1)
        %hold on
        plot(l(i,1),l(i,2),'+')
        sfalma=(abs(min-d1)/d1)*100;
        disp(sfalma)
        disp('%')
    end
    
     if(min==d2)
        % hold on
        plot(l(i,1),l(i,2),'r*')
        sfalma=(abs(min-d1)/d1)*100;
        disp(sfalma)
        disp('%')
     end
    
     if(min==d3)
        % hold on
        plot(l(i,1),l(i,2),'go')
        sfalma=(abs(min-d1)/d1)*100;
        disp(sfalma)
        disp('%')
     end
     
     if(min==d4)
        % hold on
        plot(l(i,1),l(i,2),'yv')
        sfalma=(abs(min-d1)/d1)*100;
        disp(sfalma)
        disp('%')
     end

end


for i=1:250,
   d1 = norm(s(i,:)-m1); 
   d2 = norm(s(i,:)-m2); 
   d3 = norm(s(i,:)-m3); 
   d4 = norm(s(i,:)-m4); 

    min=d1;
    
    if(d2<min)
        min=d2;
    end
    
     if(d3<min)
        min=d3;
     end
    
     if(d4<min)
        min=d4;
     end
    
    if(min==d1)
        %hold on
        plot(s(i,1),s(i,2),'+')
        sfalma=(abs(min-d2)/d2)*100;
        disp(sfalma)
        disp('%')
    end
    
     if(min==d2)
        % hold on
        plot(s(i,1),s(i,2),'r*')
        sfalma=(abs(min-d2)/d2)*100;
        disp(sfalma)
        disp('%')
     end
    
     if(min==d3)
        % hold on
        plot(s(i,1),s(i,2),'go')
        sfalma=(abs(min-d2)/d2)*100;
        disp(sfalma)
        disp('%')
     end
     
     if(min==d4)
        % hold on
        plot(s(i,1),s(i,2),'yv')
        sfalma=(abs(min-d2)/d2)*100;
        disp(sfalma)
        disp('%')
     end

end

for i=1:250,
   d1 = norm(r(i,:)-m1); 
   d2 = norm(r(i,:)-m2); 
   d3 = norm(r(i,:)-m3); 
   d4 = norm(r(i,:)-m4); 

   min=d1;
    
    if(d2<min)
        min=d2;
    end
    
     if(d3<min)
        min=d3;
     end
    
     if(d4<min)
        min=d4;
     end
    
    if(min==d1)
       % hold on
        plot(r(i,1),r(i,2),'+')
        sfalma=(abs(min-d3)/d3)*100;
        disp(sfalma)
        disp('%')
    end
    
     if(min==d2)
       %  hold on
        plot(r(i,1),r(i,2),'r*')
        sfalma=(abs(min-d3)/d3)*100;
        disp(sfalma)
        disp('%')
     end
    
     if(min==d3)
       %  hold on
        plot(r(i,1),r(i,2),'go')
        sfalma=(abs(min-d3)/d3)*100;
        disp(sfalma)
        disp('%')
     end
     
     if(min==d4)
        % hold on
        plot(r(i,1),r(i,2),'yv')
        sfalma=(abs(min-d3)/d3)*100;
        disp(sfalma)
        disp('%')
     end

end

for i=1:250,
   d1 = norm(f(i,:)-m1); 
   d2 = norm(f(i,:)-m2); 
   d3 = norm(f(i,:)-m3); 
   d4 = norm(f(i,:)-m4); 

    min=d1;
    
    if(d2<min)
        min=d2;
    end
    
     if(d3<min)
        min=d3;
     end
    
     if(d4<min)
        min=d4;
     end
    
    if(min==d1)
        %hold on
        plot(f(i,1),f(i,2),'+')
        sfalma=(abs(min-d4)/d4)*100;
        disp(sfalma)
        disp('%')
    end
    
     if(min==d2)
         %hold on
        plot(f(i,1),f(i,2),'r*')
        sfalma=(abs(min-d4)/d4)*100;
        disp(sfalma)
        disp('%')
     end
    
     if(min==d3)
        % hold on
        plot(f(i,1),f(i,2),'go')
        sfalma=(abs(min-d4)/d4)*100;
        disp(sfalma)
        disp('%')
     end
     
     if(min==d4)
        % hold on
        plot(f(i,1),f(i,2),'yv')
        sfalma=(abs(min-d4)/d4)*100;
        disp(sfalma)
        disp('%')
     end

end

%%%%%%A5


S=(1/4)*s1 + (1/4)*s2 + (1/4)*s3 +( 1/4)*s4;


for i=1:250,
    x1 = (((l(i,:) - m1))*(inv(S))*(l(i,:) - m1)')^1/2;
    x2 = (((l(i,:) - m2))*(inv(S))*(l(i,:) - m2)')^1/2;
    x3 = (((l(i,:) - m3))*(inv(S))*(l(i,:) - m3)')^1/2;
    x4 = (((l(i,:) - m4))*(inv(S))*(l(i,:) - m4)')^1/2;
    
    min=x1;
    
    if(x2<min)
        min=x2;
    end
    
     if(x3<min)
        min=x3;
     end
    
     if(x4<min)
        min=x4;
     end
    
    if(min==x1)
        hold on
        plot(l(i,1),l(i,2),'+')
        sfalma=(abs(min-x1)/x1)*100;
        disp(sfalma)
        disp('%')
    end
    
     if(min==x2)
        hold on
        plot(l(i,1),l(i,2),'r*')
        sfalma=(abs(min-x1)/x1)*100;
        disp(sfalma)
        disp('%')
     end
    
     if(min==x3)
        hold on
        plot(l(i,1),l(i,2),'go')
        sfalma=(abs(min-x1)/x1)*100;
        disp(sfalma)
        disp('%')
     end
     
     if(min==x4)
        hold on
        plot(l(i,1),l(i,2),'yv')
        sfalma=(abs(min-x1)/x1)*100;
        disp(sfalma)
        disp('%')
     end

   % plot(l(:,1),l(:,2),'+',s(:,1),s(:,2),'r*',r(:,1),r(:,2),'go',f(:,1),f(:,2),'yv')
end


for i=1:250,
    x1 = (((s(i,:) - m1))*(inv(S))*(s(i,:) - m1)')^1/2;
    x2 = (((s(i,:) - m2))*(inv(S))*(s(i,:) - m2)')^1/2;
    x3 = (((s(i,:) - m3))*(inv(S))*(s(i,:) - m3)')^1/2;
    x4 = (((s(i,:) - m4))*(inv(S))*(s(i,:) - m4)')^1/2;
    
    min=x1;
    
    if(x2<min)
        min=x2;
    end
    
     if(x3<min)
        min=x3;
     end
    
     if(x4<min)
        min=x4;
     end
    
    if(min==x1)
        hold on
        plot(s(i,1),s(i,2),'+')
        sfalma=(abs(min-x1)/x1)*100;
        disp(sfalma)
        disp('%')
    end
    
     if(min==x2)
        hold on
        plot(s(i,1),s(i,2),'r*')
        sfalma=(abs(min-x1)/x1)*100;
        disp(sfalma)
        disp('%')
     end
    
     if(min==x3)
        hold on
        plot(s(i,1),s(i,2),'go')
        sfalma=(abs(min-x1)/x1)*100;
        disp(sfalma)
        disp('%')
     end
     
     if(min==x4)
        hold on
        plot(s(i,1),s(i,2),'yv')
        sfalma=(abs(min-x1)/x1)*100;
        disp(sfalma)
        disp('%')
     end

   % plot(l(:,1),l(:,2),'+',s(:,1),s(:,2),'r*',r(:,1),r(:,2),'go',f(:,1),f(:,2),'yv')
end

for i=1:250,
    x1 = (((r(i,:) - m1))*(inv(S))*(r(i,:) - m1)')^1/2;
    x2 = (((r(i,:) - m2))*(inv(S))*(r(i,:) - m2)')^1/2;
    x3 = (((r(i,:) - m3))*(inv(S))*(r(i,:) - m3)')^1/2;
    x4 = (((r(i,:) - m4))*(inv(S))*(r(i,:) - m4)')^1/2;
    
    min=x1;
    
    if(x2<min)
        min=x2;
    end
    
     if(x3<min)
        min=x3;
     end
    
     if(x4<min)
        min=x4;
     end
    
    if(min==x1)
        hold on
        plot(r(i,1),r(i,2),'+')
        sfalma=(abs(min-x1)/x1)*100;
        disp(sfalma)
        disp('%')
    end
    
     if(min==x2)
        hold on
        plot(r(i,1),r(i,2),'r*')
        sfalma=(abs(min-x1)/x1)*100;
        disp(sfalma)
        disp('%')
     end
    
     if(min==x3)
        hold on
        plot(r(i,1),r(i,2),'go')
        sfalma=(abs(min-x1)/x1)*100;
        disp(sfalma)
        disp('%')
     end
     
     if(min==x4)
        hold on
        plot(r(i,1),r(i,2),'yv')
        sfalma=(abs(min-x1)/x1)*100;
        disp(sfalma)
        disp('%')
     end

   % plot(l(:,1),l(:,2),'+',s(:,1),s(:,2),'r*',r(:,1),r(:,2),'go',f(:,1),f(:,2),'yv')
end

for i=1:250,
    x1 = (((f(i,:) - m1))*(inv(S))*(f(i,:) - m1)')^1/2;
    x2 = (((f(i,:) - m2))*(inv(S))*(f(i,:) - m2)')^1/2;
    x3 = (((f(i,:) - m3))*(inv(S))*(f(i,:) - m3)')^1/2;
    x4 = (((f(i,:) - m4))*(inv(S))*(f(i,:) - m4)')^1/2;

    min=x1;
    
    if(x2<min)
        min=x2;
    end
    
     if(x3<min)
        min=x3;
     end
    
     if(x4<min)
        min=x4;
     end
    
    if(min==x1)
        hold on
        plot(f(i,1),f(i,2),'+')
        sfalma=(abs(min-x1)/x1)*100;
        disp(sfalma)
        disp('%')
    end
    
     if(min==x2)
         hold on
         plot(f(i,1),f(i,2),'r*')
        sfalma=(abs(min-x1)/x1)*100;
        disp(sfalma)
        disp('%')
     end
    
     if(min==x3)
        hold on
         plot(f(i,1),f(i,2),'go')
        sfalma=(abs(min-x1)/x1)*100;
        disp(sfalma)
        disp('%')
     end
     
     if(min==x4)
        hold on
       plot(f(i,1),f(i,2),'yv')
        sfalma=(abs(min-x1)/x1)*100;
        disp(sfalma)
        disp('%')
     end

   % plot(l(:,1),l(:,2),'+',s(:,1),s(:,2),'r*',r(:,1),r(:,2),'go',f(:,1),f(:,2),'yv')
end



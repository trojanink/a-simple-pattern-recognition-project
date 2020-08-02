%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% D1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rng(0);

MU = [0 0];
SIGMA = [0.6 0.4; 0.4 0.6];
r = mvnrnd(MU,SIGMA, 250);

MU = [2 2];
SIGMA = [0.6 0.4; 0.4 0.6];
d = mvnrnd(MU,SIGMA, 250);

MU = [2 0];
SIGMA = [0.6 0.4; 0.4 0.6];
p = mvnrnd(MU,SIGMA, 250);


MU = [4 2];
SIGMA = [0.6 0.4; 0.4 0.6];
k = mvnrnd(MU,SIGMA, 250);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% D2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


w1 = [r ; d];
w2 = [p ; k];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% D3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%plot(w1(:,1),w1(:,2),'+', w2(:,1),w2(:,2),'r*');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% D4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


x = 0;
y =0;

for i=1:500
    
    x = x + w1(i,1); 
    y = y + w1(i,2);
    
    
end

mML_1 = [x/500 y/500];        % mesh timh 1hs klashs

x = 0;

for i=1:500
    
   x =  x + ((w1(i,:) - mML_1)')*(w1(i,:) - mML_1);
    
end

sML_1 = x / 500 ;            % diaspora 1hs klashs

%%%%%%%%%%%%%% ypologismos parametrwn 2hs klashs %%%%%%%%%%%%%%%%

x = 0;
y =0;

for i=1:500
    
    x = x + w2(i,1); 
    y = y + w2(i,2);
    
    
end

mML_2 = [x/500 y/500];        % mesh timh 2hs klashs

for i=1:500
    
   x =  x + ((w2(i,:) - mML_2)')*(w2(i,:) - mML_2);
    
end

sML_2 = x / 500 ;            % diaspora 2hs klashs


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% D5 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%%%%%%%%%%%%%%%%%   eukleidia apostash   %%%%%%%%%%%%%%%%%%

 %%%%%%%%%%%%%%%% gia 1h klash %%%%%%%%%%%%%%%%
%{
for i=1:500
    
   eukl_dist_1 = norm(w1(i,:) - mML_1);
   eukl_dist_2 = norm(w1(i,:) - mML_2);
   
   if( eukl_dist_1 < eukl_dist_2 )
         hold on
         plot(w1(i,1),w1(i,2),'+')
         sfalma = ( abs(eukl_dist_1-eukl_dist_1)/eukl_dist_1 )*100
   end  
   if(eukl_dist_2 < eukl_dist_1)
         hold on
         plot(w1(i,1),w1(i,2),'r*')
         sfalma = ( abs(eukl_dist_2-eukl_dist_1)/eukl_dist_1 )*100
   end
        
end

    %%%%%%%%%%%%%%%% gia 2h klash %%%%%%%%%%%%%%%%
  
 for i=1:500
    
   eukl_dist_1 = norm(w2(i,:) - mML_1);
   eukl_dist_2 = norm(w2(i,:) - mML_2);
   
   if( eukl_dist_1 < eukl_dist_2 )
         hold on
         plot(w2(i,1),w2(i,2),'+')
         sfalma = ( abs(eukl_dist_1-eukl_dist_2)/eukl_dist_2 )*100
   end  
   if(eukl_dist_2 < eukl_dist_1)
         hold on
         plot(w2(i,1),w2(i,2),'r*')
         sfalma = ( abs(eukl_dist_2-eukl_dist_2)/eukl_dist_2 )*100
   end
        
 end
%}
   
   %%%%%%%%%%%%%%%%%%   bayesian   %%%%%%%%%%%%%%%%%%
 
   %%%%%%%%%%%%%%%% gia 1h klash %%%%%%%%%%%%%%%%
  %{ 
   
for i=1:500
       
  px1 = (exp( -1/2 * ( w1(i,:) - mML_1 ) * inv(sML_1) * ( w1(i,:) - mML_1 )' ) / 2 * pi * (det(sML_1)^1/2));
  px2 = (exp( -1/2 * ( w1(i,:) - mML_2 ) * inv(sML_2) * ( w1(i,:) - mML_2 )' ) / 2 * pi * (det(sML_2)^1/2));
  
  if ( px1 > px2 )
      hold on 
      plot(w1(i,1),w1(i,2),'+')
      sfalma = ( abs(px1-px1)/px1 )*100
  end
  if ( px2 > px1 )
      hold on 
      plot(w1(i,1),w1(i,2),'r*')
      sfalma = ( abs(px2-px1)/px1 )*100
  end
  
 end
 
  %%%%%%%%%%%%%%%% gia 2h klash %%%%%%%%%%%%%%%%
       
       
 for i=1:500
       
  px1 = (exp( -1/2 * ( w2(i,:) - mML_1 ) * inv(sML_1) * ( w2(i,:) - mML_1 )' ) / 2 * pi * (det(sML_1)^1/2));
  px2 = (exp( -1/2 * ( w2(i,:) - mML_2 ) * inv(sML_2) * ( w2(i,:) - mML_2 )' ) / 2 * pi * (det(sML_2)^1/2));
  
  if ( px1 > px2 )
      hold on 
      plot(w2(i,1),w2(i,2),'+')
      sfalma = ( abs(px1-px2)/px2 )*100
  end
  if ( px2 > px1 )
      hold on 
      plot(w2(i,1),w2(i,2),'r*')
      sfalma = ( abs(px2-px2)/px2 )*100
  end
  
 end
 %}
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%% D6 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 [e,u]=eig(SIGMA)
 
 if(u(1,1) < u(2,2))
     for i=1:500
        eik1 = e(:,2) * w1(i,:);
        eik2 = e(:,2) * w2(i,:);
        for j=1:2
            hold on
            plot(eik1(j,1),eik1(j,2),'+');
            hold on
            plot(eik2(j,1),eik2(j,2),'r*');
        end
     end
 end
     
 if(u(1,1) > u(2,2))
     for i=1:500
        eik1 = e(:,1) * w1(i,:);
        eik2 = e(:,1)' * w2(i,:);
        for j=1:2
            hold on
            plot(eik1(j,1),eik1(j,2),'+');
            hold on
            plot(eik2(j,2),eik2(j,2),'r*');
        end
     end
 end
 

                %%%%%%%%%%%%%%%% ASKHSH 3 %%%%%%%%%%%%%%%%
                
                
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%% C1 C2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rng(0);

MU = [0 0];
SIGMA = [0.6 0.4; 0.4 0.6];
r = mvnrnd(MU,SIGMA, 500);

MU = [2 2];
SIGMA = [0.6 0.4; 0.4 0.6];
d = mvnrnd(MU,SIGMA, 63);

MU = [2 0];
SIGMA = [0.6 0.4; 0.4 0.6];
p = mvnrnd(MU,SIGMA, 62);


MU = [4 2];
SIGMA = [0.6 0.4; 0.4 0.6];
k = mvnrnd(MU,SIGMA, 375); 

% plot(r(:,1),r(:,2),'+', d(:,1),d(:,2),'r*', p(:,1),p(:,2),'gd', k(:,1),k(:,2),'ks');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   C3   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%% ypologismos parametrwn 1hs klashs %%%%%%%%%%%%%%%%


x = 0;
y =0;

for i=1:500
    
    x = x + r(i,1); 
    y = y + r(i,2);
    
    
end

mML_1 = [x/500 y/500];        % mesh timh 1hs klashs

x = 0;

for i=1:500
    
   x =  x + ((r(i,:) - mML_1)')*(r(i,:) - mML_1);
    
end

sML_1 = x / 500 ;            % diaspora 1hs klashs

%%%%%%%%%%%%%% ypologismos parametrwn 2hs klashs %%%%%%%%%%%%%%%%

x = 0;
y =0;

for i=1:63
    
    x = x + d(i,1); 
    y = y + d(i,2);
    
    
end

mML_2 = [x/63 y/63];        % mesh timh 2hs klashs

x = 0;

for i=1:63
    
   x =  x + ((d(i,:) - mML_2)')*(d(i,:) - mML_2);
    
end

sML_2 = x / 63  ;           % diaspora 2hs klashs


%%%%%%%%%%%%%% ypologismos parametrwn 3hs klashs %%%%%%%%%%%%%%%%


x = 0;
y =0;

for i=1:62
    
    x = x + p(i,1); 
    y = y + p(i,2);
    
    
end

mML_3 = [x/62 y/62] ;       % mesh timh 3hs klashs

x = 0;

for i=1:62
    
   x =  x + ((p(i,:) - mML_3)')*(p(i,:) - mML_3);
    
end

sML_3 = x / 62 ;            % diaspora 3hs klashs

%%%%%%%%%%%%%% ypologismos parametrwn 4hs klashs %%%%%%%%%%%%%%%%



x = 0;
y =0;

for i=1:375
    
    x = x + k(i,1); 
    y = y + k(i,2);
    
    
end

mML_4 = [x/375 y/375] ;       % mesh timh 4hs klashs

x = 0;

for i=1:375
    
   x =  x + ((k(i,:) - mML_4)')*(k(i,:) - mML_4);
    
end

sML_4 = x / 375  ;           % diaspora 4hs klashs



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   C4   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%{

        %%%%%%%%%%%%%%%% gia 1h klash %%%%%%%%%%%%%%%%

for i=1:500
    
   eukl_dist_1 = norm(r(i,:) - mML_1);
   eukl_dist_2 = norm(r(i,:) - mML_2);
   eukl_dist_3 = norm(r(i,:) - mML_3);
   eukl_dist_4 = norm(r(i,:) - mML_4);
    
   min = eukl_dist_1;
   
   if( eukl_dist_2 < min )
       min = eukl_dist_2;
   end
   if (eukl_dist_3 < min )
       min = eukl_dist_3;
   end
   if ( eukl_dist_4 < min )
       min = eukl_dist_4;
   end
    
   
   if( eukl_dist_1 == min )
         hold on
         plot(r(i,1),r(i,2),'+')
     sfalma = ( abs(min-eukl_dist_1)/eukl_dist_1 )*100
      
   end
   if( eukl_dist_2 == min )
       hold on
       plot(r(i,1),r(i,2),'r*')
        sfalma = ( abs(min-eukl_dist_1)/eukl_dist_1 )*100
      
   end
   if ( eukl_dist_3 == min )
       hold on
       plot(r(i,1),r(i,2),'gd')
        sfalma = ( abs(min-eukl_dist_1)/eukl_dist_1 )*100
   
   end
   if ( eukl_dist_4 == min )
       hold on
       plot(r(i,1),r(i,2),'ks')
        sfalma = ( abs(min-eukl_dist_1)/eukl_dist_1 )*100
   
   end
   
    
end

        %%%%%%%%%%%%%%%% gia 2h klash %%%%%%%%%%%%%%%%

for i=1:63
    
   eukl_dist_1 = norm(d(i,:) - mML_1);
   eukl_dist_2 = norm(d(i,:) - mML_2);
   eukl_dist_3 = norm(d(i,:) - mML_3);
   eukl_dist_4 = norm(d(i,:) - mML_4);
    
   min = eukl_dist_1;
   
   if( eukl_dist_2 < min )
       min = eukl_dist_2;
   end
   if ( eukl_dist_3 < min )
       min = eukl_dist_3;
   end
   if ( eukl_dist_4 < min )
       min = eukl_dist_4;
   end
    
   
   if( eukl_dist_1 == min )
       hold on
       plot(d(i,1),d(i,2),'+')
       sfalma = ( abs(min-eukl_dist_2)/eukl_dist_2 )*100
      
   end
   if( eukl_dist_2 == min )
       hold on
       plot(d(i,1),d(i,2),'r*')
       sfalma = ( abs(min-eukl_dist_2)/eukl_dist_2 )*100
      
   end
   if ( eukl_dist_3 == min )
       hold on
       plot(d(i,1),d(i,2),'gd')
       sfalma = ( abs(min-eukl_dist_2)/eukl_dist_2 )*100
    
   end
   if ( eukl_dist_4 == min )
       hold on
       plot(d(i,1),d(i,2),'ks')
       sfalma = ( abs(min-eukl_dist_2)/eukl_dist_2 )*100
   end
   
    
end

        %%%%%%%%%%%%%%%% gia 3h klash %%%%%%%%%%%%%%%%


for i=1:62
    
   eukl_dist_1 = norm(p(i,:) - mML_1);
   eukl_dist_2 = norm(p(i,:) - mML_2);
   eukl_dist_3 = norm(p(i,:) - mML_3);
   eukl_dist_4 = norm(p(i,:) - mML_4);
    
   min = eukl_dist_1;
   
   if( eukl_dist_2 < min )
       min = eukl_dist_2;
   end
   if ( eukl_dist_3 < min )
       min = eukl_dist_3;
   end
   if ( eukl_dist_4 < min )
       min = eukl_dist_4;
   end
    
   
   if( eukl_dist_1 == min )
       hold on
       plot(p(i,1),p(i,2),'+')
       sfalma = ( abs(min-eukl_dist_3)/eukl_dist_3 )*100
      
   end
   if( eukl_dist_2 == min )
       hold on
       plot(p(i,1),p(i,2),'r*')
       sfalma = ( abs(min-eukl_dist_3)/eukl_dist_3 )*100
      
   end
   if ( eukl_dist_3 == min )
       hold on
       plot(p(i,1),p(i,2),'gd')
       sfalma = ( abs(min-eukl_dist_3)/eukl_dist_3 )*100
        
   end
   if ( eukl_dist_4 == min )
       hold on
       plot(p(i,1),p(i,2),'ks')
       sfalma = ( abs(min-eukl_dist_3)/eukl_dist_3 )*100
      
   end
   
    
end

        
        %%%%%%%%%%%%%%%% gia 4h klash %%%%%%%%%%%%%%%%


for i=1:375
    
   eukl_dist_1 = norm(k(i,:) - mML_1);
   eukl_dist_2 = norm(k(i,:) - mML_2);
   eukl_dist_3 = norm(k(i,:) - mML_3);
   eukl_dist_4 = norm(k(i,:) - mML_4);
    
   min = eukl_dist_1;
   
   if( eukl_dist_2 < min )
       min = eukl_dist_2;
   end
   if ( eukl_dist_3 < min )
       min = eukl_dist_3;
   end
   if ( eukl_dist_4 < min )
       min = eukl_dist_4;
   end
    
   
   if( eukl_dist_1 == min )
       hold on
       plot(k(i,1),k(i,2),'+')
       sfalma = ( abs(min-eukl_dist_4)/eukl_dist_4 )*100
      
   end
   if( eukl_dist_2 == min )
       hold on
       plot(k(i,1),k(i,2),'r*')
       sfalma = ( abs(min-eukl_dist_4)/eukl_dist_4 )*100
      
   end
   if ( eukl_dist_3 == min )
       hold on
       plot(k(i,1),k(i,2),'gd')
       sfalma = ( abs(min-eukl_dist_4)/eukl_dist_4 )*100
    
   end
   if ( eukl_dist_4 == min )
       hold on
       plot(k(i,1),k(i,2),'ks')
       sfalma = ( abs(min-eukl_dist_4)/eukl_dist_4 )*100
      
   end
   
    
end

%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   C5   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        %%%%%%%%%%%%%%%% gia 1h klash %%%%%%%%%%%%%%%%
%{
        temp=(sML_1 + sML_2 + sML_3 + sML_4)/4 ;
        
        
    for i=1:500    
        
        dm_1=((r(i,:) - mML_1) * (inv(temp)) * (r(i,:) - mML_1)')^1/2;
        dm_2=((r(i,:) - mML_2) * (inv(temp)) * (r(i,:) - mML_2)')^1/2;
        dm_3=((r(i,:) - mML_3) * (inv(temp)) * (r(i,:) - mML_3)')^1/2;
        dm_4=((r(i,:) - mML_4) * (inv(temp)) * (r(i,:) - mML_4)')^1/2;
    
    
    min = dm_1;
   
   if( dm_2 < min )
       min = dm_2;
   end
   if ( dm_3 < min )
       min = dm_3;
   end
   if ( dm_4 < min )
       min = dm_4;
   end
    
   
   if( dm_1 == min )
       hold on
       plot(r(i,1),r(i,2),'+')
       sfalma = ( abs(min-dm_1)/dm_1 )*100
      
   end
   if( dm_2 == min )
       hold on
       plot(r(i,1),r(i,2),'r*')
       sfalma = ( abs(min-dm_1)/dm_1 )*100
      
   end
   if ( dm_3 == min )
       hold on
       plot(r(i,1),r(i,2),'gd')
       sfalma = ( abs(min-dm_1)/dm_1 )*100
        
   end
   if ( dm_4 == min )
       hold on
       plot(r(i,1),r(i,2),'ks')
       sfalma = ( abs(min-dm_1)/dm_1 )*100
      
   end
    
    end
    
    
    %%%%%%%%%%%%%%%% gia 2h klash %%%%%%%%%%%%%%%%

    
    
    for i=1:63    
        
        dm_1=((d(i,:) - mML_1) * (inv(temp)) * (d(i,:) - mML_1)')^1/2;
        dm_2=((d(i,:) - mML_2) * (inv(temp)) * (d(i,:) - mML_2)')^1/2;
        dm_3=((d(i,:) - mML_3) * (inv(temp)) * (d(i,:) - mML_3)')^1/2;
        dm_4=((d(i,:) - mML_4) * (inv(temp)) * (d(i,:) - mML_4)')^1/2;
    
    
    min = dm_1;
   
   if( dm_2 < min )
       min = dm_2;
   end
   if ( dm_3 < min )
       min = dm_3;
   end
   if ( dm_4 < min )
       min = dm_4;
   end
    
   
   if( dm_1 == min )
       hold on
       plot(d(i,1),d(i,2),'+')
       sfalma = ( abs(min-dm_2)/dm_2 )*100
      
   end
   if( dm_2 == min )
       hold on
       plot(d(i,1),d(i,2),'r*')
       sfalma = ( abs(min-dm_2)/dm_2 )*100
      
   end
   if ( dm_3 == min )
       hold on
       plot(d(i,1),d(i,2),'gd')
       sfalma = ( abs(min-dm_2)/dm_2 )*100
        
   end
   if ( dm_4 == min )
       hold on
       plot(d(i,1),d(i,2),'ks')
       sfalma = ( abs(min-dm_2)/dm_2 )*100
      
   end
    
    end
    
    
    %%%%%%%%%%%%%%%% gia 3h klash %%%%%%%%%%%%%%%%

        
   for i=1:62    
        
        dm_1=((p(i,:) - mML_1) * (inv(temp)) * (p(i,:) - mML_1)')^1/2;
        dm_2=((p(i,:) - mML_2) * (inv(temp)) * (p(i,:) - mML_2)')^1/2;
        dm_3=((p(i,:) - mML_3) * (inv(temp)) * (p(i,:) - mML_3)')^1/2;
        dm_4=((p(i,:) - mML_4) * (inv(temp)) * (p(i,:) - mML_4)')^1/2;
    
    
    min = dm_1;
   
   if( dm_2 < min )
       min = dm_2;
   end
   if ( dm_3 < min )
       min = dm_3;
   end
   if ( dm_4 < min )
       min = dm_4;
   end
    
   
   if( dm_1 == min )
       hold on
       plot(p(i,1),p(i,2),'+')
       sfalma = ( abs(min-dm_3)/dm_3 )*100
      
   end
   if( dm_2 == min )
       hold on
       plot(p(i,1),p(i,2),'r*')
       sfalma = ( abs(min-dm_3)/dm_3 )*100
      
   end
   if ( dm_3 == min )
       hold on
       plot(p(i,1),p(i,2),'gd')
       sfalma = ( abs(min-dm_3)/dm_3 )*100
        
   end
   if ( dm_4 == min )
       hold on
       plot(p(i,1),p(i,2),'ks')
       sfalma = ( abs(min-dm_3)/dm_3 )*100
      
   end
    
   end
    
   
    %%%%%%%%%%%%%%%% gia 4h klash %%%%%%%%%%%%%%%%

    
       for i=1:375    
        
        dm_1=((k(i,:) - mML_1) * (inv(temp)) * (k(i,:) - mML_1)')^1/2;
        dm_2=((k(i,:) - mML_2) * (inv(temp)) * (k(i,:) - mML_2)')^1/2;
        dm_3=((k(i,:) - mML_3) * (inv(temp)) * (k(i,:) - mML_3)')^1/2;
        dm_4=((k(i,:) - mML_4) * (inv(temp)) * (k(i,:) - mML_4)')^1/2;
    
    
    min = dm_1;
   
   if( dm_2 < min )
       min = dm_2;
   end
   if ( dm_3 < min )
       min = dm_3;
   end
   if ( dm_4 < min )
       min = dm_4;
   end
    
   
   if( dm_1 == min )
       hold on
       plot(k(i,1),k(i,2),'+')
       sfalma = ( abs(min-dm_4)/dm_4 )*100
      
   end
   if( dm_2 == min )
       hold on
       plot(k(i,1),k(i,2),'r*')
       sfalma = ( abs(min-dm_4)/dm_4 )*100
      
   end
   if ( dm_3 == min )
       hold on
       plot(k(i,1),k(i,2),'gd')
       sfalma = ( abs(min-dm_4)/dm_4 )*100
        
   end
   if ( dm_4 == min )
       hold on
       plot(k(i,1),k(i,2),'ks')
       sfalma = ( abs(min-dm_4)/dm_4 )*100
      
   end
    
 end
   %}
       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   C6   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

       %%%%%%%%%%%%%%%% gia 1h klash %%%%%%%%%%%%%%%%
       
 
 for i=1:500
       
  px1 = 1/2 * (exp( -1/2 * ( r(i,:) - mML_1 ) * inv(sML_1) * ( r(i,:) - mML_1 )' ) / 2 * pi * (det(sML_1)^1/2));
  px2 = 1/16 * (exp( -1/2 * ( r(i,:) - mML_2 ) * inv(sML_2) * ( r(i,:) - mML_2 )' ) / 2 * pi * (det(sML_2)^1/2));
  px3 = 1/16 * (exp( -1/2 * ( r(i,:) - mML_3 ) * inv(sML_3) * ( r(i,:) - mML_3 )' ) / 2 * pi * (det(sML_3)^1/2)); 
  px4 = 3/8 * (exp( -1/2 * ( r(i,:) - mML_4 ) * inv(sML_4) * ( r(i,:) - mML_4 )' ) / 2 * pi * (det(sML_4)^1/2));

  
  max = px1;
  
  if ( px2 > max )
      max = px2;
  end
  if ( px3 > max )
      max = px3;
  end    
  if ( px4 > max )
      max = px4;
  end
  
  
  if ( max == px1 )
      hold on 
      plot(r(i,1),r(i,2),'+')
      sfalma = ( abs(max-px1)/px1 )*100
  end
  if ( max == px2 )
      hold on 
      plot(r(i,1),r(i,2),'r*')
      sfalma = ( abs(max-px1)/px1 )*100
  end
  if ( max == px3 )
      hold on 
      plot(r(i,1),r(i,2),'gd')
      sfalma = ( abs(max-px1)/px1 )*100
  end
  if ( max == px4 )
      hold on 
      plot(r(i,1),r(i,2),'ks')
      sfalma = ( abs(max-px1)/px1 )*100
  end
  
 end
 
  %%%%%%%%%%%%%%%% gia 2h klash %%%%%%%%%%%%%%%%
       
       
 for i=1:63
       
  px1 = 1/2 * (exp( -1/2 * ( r(i,:) - mML_1 ) * inv(sML_1) * ( r(i,:) - mML_1 )' ) / 2 * pi * (det(sML_1)^1/2));
  px2 = 1/16 * (exp( -1/2 * ( r(i,:) - mML_2 ) * inv(sML_2) * ( r(i,:) - mML_2 )' ) / 2 * pi * (det(sML_2)^1/2));
  px3 = 1/16 * (exp( -1/2 * ( r(i,:) - mML_3 ) * inv(sML_3) * ( r(i,:) - mML_3 )' ) / 2 * pi * (det(sML_3)^1/2)); 
  px4 = 3/8 * (exp( -1/2 * ( r(i,:) - mML_4 ) * inv(sML_4) * ( r(i,:) - mML_4 )' ) / 2 * pi * (det(sML_4)^1/2));

  
  
  max = px1;
  
  if ( px2 > max )
      max = px2;
  end
  if ( px3 > max )
      max = px3;
  end    
  if ( px4 > max )
      max = px4;
  end
  
  
  if ( max == px1 )
      hold on 
      plot(d(i,1),d(i,2),'+')
      sfalma = ( abs(max-px2)/px2 )*100
  end
  if ( max == px2 )
      hold on 
      plot(d(i,1),d(i,2),'r*')
      sfalma = ( abs(max-px2)/px2 )*100
  end
  if ( max == px3 )
      hold on 
      plot(d(i,1),d(i,2),'gd')
      sfalma = ( abs(max-px2)/px2 )*100
  end
  if ( max == px4 )
      hold on 
      plot(d(i,1),d(i,2),'ks')
      sfalma = ( abs(max-px2)/px2 )*100
  end
  
 end
 
  %%%%%%%%%%%%%%%% gia 3h klash %%%%%%%%%%%%%%%%
       
       
 for i=1:62
       
  px1 = 1/2 * (exp( -1/2 * ( r(i,:) - mML_1 ) * inv(sML_1) * ( r(i,:) - mML_1 )' ) / 2 * pi * (det(sML_1)^1/2));
  px2 = 1/16 * (exp( -1/2 * ( r(i,:) - mML_2 ) * inv(sML_2) * ( r(i,:) - mML_2 )' ) / 2 * pi * (det(sML_2)^1/2));
  px3 = 1/16 * (exp( -1/2 * ( r(i,:) - mML_3 ) * inv(sML_3) * ( r(i,:) - mML_3 )' ) / 2 * pi * (det(sML_3)^1/2)); 
  px4 = 3/8 * (exp( -1/2 * ( r(i,:) - mML_4 ) * inv(sML_4) * ( r(i,:) - mML_4 )' ) / 2 * pi * (det(sML_4)^1/2));

  
  
  max = px1;
  
  if ( px2 > max )
      max = px2;
  end
  if ( px3 > max )
      max = px3;
  end    
  if ( px4 > max )
      max = px4;
  end
  
  
  if ( max == px1 )
      hold on 
      plot(p(i,1),p(i,2),'+')
      sfalma = ( abs(max-px3)/px3 )*100
  end
  if ( max == px2 )
      hold on 
      plot(p(i,1),p(i,2),'r*')
      sfalma = ( abs(max-px3)/px3 )*100
  end
  if ( max == px3 )
      hold on 
      plot(p(i,1),p(i,2),'gd')
      sfalma = ( abs(max-px3)/px3 )*100
  end
  if ( max == px4 )
      hold on 
      plot(p(i,1),p(i,2),'ks')
      sfalma = ( abs(max-px3)/px3 )*100
  end
  
 end
 
  %%%%%%%%%%%%%%%% gia 4h klash %%%%%%%%%%%%%%%%
       
       
 for i=1:375
       
  px1 = 1/2 * (exp( -1/2 * ( r(i,:) - mML_1 ) * inv(sML_1) * ( r(i,:) - mML_1 )' ) / 2 * pi * (det(sML_1)^1/2));
  px2 = 1/16 * (exp( -1/2 * ( r(i,:) - mML_2 ) * inv(sML_2) * ( r(i,:) - mML_2 )' ) / 2 * pi * (det(sML_2)^1/2));
  px3 = 1/16 * (exp( -1/2 * ( r(i,:) - mML_3 ) * inv(sML_3) * ( r(i,:) - mML_3 )' ) / 2 * pi * (det(sML_3)^1/2)); 
  px4 = 3/8 * (exp( -1/2 * ( r(i,:) - mML_4 ) * inv(sML_4) * ( r(i,:) - mML_4 )' ) / 2 * pi * (det(sML_4)^1/2));

  
  
  max = px1;
  
  if ( px2 > max )
      max = px2;
  end
  if ( px3 > max )
      max = px3;
  end    
  if ( px4 > max )
      max = px4;
  end
  
  
  if ( max == px1 )
      hold on 
      plot(k(i,1),k(i,2),'+')
      sfalma = ( abs(max-px4)/px4 )*100
  end
  if ( max == px2 )
      hold on 
      plot(k(i,1),k(i,2),'r*')
      sfalma = ( abs(max-px4)/px4 )*100
  end
  if ( max == px3 )
      hold on 
      plot(k(i,1),k(i,2),'gd')
      sfalma = ( abs(max-px4)/px4 )*100
  end
  if ( max == px4 )
      hold on 
      plot(k(i,1),k(i,2),'ks')
      sfalma = ( abs(max-px4)/px4 )*100
  end
  
  
 end

 
 
 

 
 
clc
clear all
close all
n=4;
g=gamma(vpa(n)+1);
x=rand(4);
x(2,1)=1;
x(1,2)=2;
x(2,4)=4;
x(4,3)=3;
for i=1:4
    for j=1:4
        for k=1:4
            for l=1:4
                if (x(k,l)==i)
                    u=[k,l];
                end
                if (x(k,l)==j)
                    v=[k,l];
                end
            end
        end
        
                d(i,j)=sqrt((u(1)-v(1))^2+(u(2)-v(2))^2);
    end
end
m=[1 2 3];
a=perms(m);



                
              
              
                
                    
                    
      


clc
clear all
close all
n=4;
f=factorial(n);
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
m=[4 3 2 1];
a=perms(m);

for i=1:f
    s=0;
    for j=1:n-1
        s=s+d(a(i,j),a(i,j+1));
    end
    a(i,n+1)=s;
end
a=sortrows(a,n+1);
q=round(.8*f);
if rem(q,2)~=0
    q=q+1;
end
index=randperm(q);
for i=1:q/2
    parent_1=a(index(2*i-1),1:n)
    parent_2=a(index(2*i),1:n)
    cross_pos=ceil(rand*(n-1));
    p_1=parent_1(cross_pos+1:n);
    p_2=parent_2(cross_pos+1:n)
    r_1=perms(p_1);
    r_2=perms(p_2);
    rp_1=randperm(length(p_1));
    rp_2=randperm(length(p_2));
    child_1=[parent_1(1:cross_pos) r_1(rp_1(1),:)];
    child_2=[parent_2(1:cross_pos) r_2(rp_2(1),:)];
    a(f+2*i-1,1:n)=child_1;
    a(f+2*i,1:n)=child_2;
end
a(:,n+1)=a(:,1);
for i=1:(f+q)
    s=0;
    for j=1:n-1
        s=s+d(a(i,j),a(i,j+1));
    end
    a(i,n+1)=s;
end
a=sortrows(a,n+1);
a=a(1:f,:);
y=a(1,1:n);



        
        




                
              
              
                
                    
                    
      


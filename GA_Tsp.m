clc
clear all
close all
a=rand(10,2)*100;
scatter(a(:,1),a(:,2));
for i=1:100
    r(i,:)=randperm(10);
end

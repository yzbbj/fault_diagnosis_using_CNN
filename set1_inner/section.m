%%用于对信号进行重叠分段
function[X]=section(x,y)
%%x是分段信号的长度，y是分段信号的数量
%%X是y个分段信号的集合
X=zeros(x,y);
X098=zeros(x,1);
%%load可以放在section函数外面，这样这个函数可以用语所有的情况
%%load('97.mat')
%load('98.mat')
%load('99.mat')
%load('100.mat')
load('106.mat')
for i=1:y
    %%unidrnd(8),表示随机生成一个最大为8的整数
    a(i)=unidrnd(119000);%%节选信号的起点
    b(i)=a(i)+x-1;%%节选信号的终点
   %% for k=a(i):b(i)   
    %%   for j=1:x
            
    X098=X106_DE_time(a(i):b(i),:);%%取多行多列元素:a.多行元素：  A(i:i+m,:)表示提取A的第i行到第i+m行的元素。b.多列元素：  A(:,j:j+n)表示提取A的第j列到第j+n列的元素。c.提取块：     A(i:i+m, j:j+n)表示的是mxn的一个子块的元素。
      %%  end
   %% end
   X098
   X(:,i)=X098;
end 
%%X的每一列都是一个目标信号

   
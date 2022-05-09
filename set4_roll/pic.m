%%用于生成图片，保存的图片数量为y
x=2000;
y=200;
a=section(x,y);%%函数section(x,y),x是分段信号的长度，y是分段信号的数量，生成的矩阵X的每一列都是一个目标信号.矩阵X有x行，y列
for i=1:y
    b=a(:,i);
    s = num2str(i);%%i(数字）转换为字符串
    name = strcat(s, '.png') ;%%strcat 即 Strings Catenate，横向连接字符串
    plot(b); 
    saveas(gcf,name);
    temp=imread(name);
	img = imresize(temp, [64 NaN]);
	imwrite(img,name);
   %% png1=imread('name.jpg');
   %% png2=imresize(png1, [64 NaN]); %%改变像素大小
end
%%��������ͼƬ�������ͼƬ����Ϊy
x=2000;
y=200;
a=section(x,y);%%����section(x,y),x�Ƿֶ��źŵĳ��ȣ�y�Ƿֶ��źŵ����������ɵľ���X��ÿһ�ж���һ��Ŀ���ź�.����X��x�У�y��
for i=1:y
    b=a(:,i);
    s = num2str(i);%%i(���֣�ת��Ϊ�ַ���
    name = strcat(s, '.png') ;%%strcat �� Strings Catenate�����������ַ���
    plot(b); 
    saveas(gcf,name);
    temp=imread(name);
	img = imresize(temp, [64 NaN]);
	imwrite(img,name);
   %% png1=imread('name.jpg');
   %% png2=imresize(png1, [64 NaN]); %%�ı����ش�С
end
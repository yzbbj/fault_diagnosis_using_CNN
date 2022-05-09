%%This code is used to visualize the features of different layers

%%Analyze CNN network architecture
%You should train the CNN network beforehand
analyzeNetwork(net)
%net.Layers can also be used to show the structure of the network

%%Feature of cov1,which locates at the 2nd layer of the network and has 8
%%channels.
layer = 2;
channels = 1:8;
I = deepDreamImage(net,layer,channels,'PyramidLevels',1);
figure
I = imtile(I,'ThumbnailSize',[128 128]);
imshow(I)
name = net.Layers(layer).Name
title(['Layer ',name,' Features'])

%%Feature of cov2,which locates at the 6th layer of the network and has 16
%%channels.
layer = 6;
channels = 1:16;
I = deepDreamImage(net,layer,channels,'PyramidLevels',1);
figure
I = imtile(I,'ThumbnailSize',[128 128]);
imshow(I)
name = net.Layers(layer).Name;
title(['Layer ',name,' Features'])

%%Feature of cov3,which locates at the 10th layer of the network and has 32
%%channels.
layer = 10;
channels = 1:32;
I = deepDreamImage(net,layer,channels,'PyramidLevels',1);
figure
I = imtile(I,'ThumbnailSize',[128 128]);
imshow(I) 
name = net.Layers(layer).Name;
title(['Layer ',name,' Features'])


%%Feature of fully connected layer,which locates at the 13th layer of the
%%network
layer = 13;
channels = 1:4;
I = deepDreamImage(net,layer,channels, ...
    'Verbose',true,...
    'NumIterations',20,...
     'PyramidLevels',2);
figure
I = imtile(I,'ThumbnailSize',[128 128]);
imshow(I)
name = net.Layers(layer).Name;
title(['Layer ',name,' Features'])




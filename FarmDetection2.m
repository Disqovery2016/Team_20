%% apply wiener filter .
clc; newImageRGB = imread('roughgreen.png');
%% convert image to gray level
grayImage = rgb2gray(newImageRGB);
figure;
imshow(grayImage); 
%% adding noise to image .
afferNoise = imnoise(grayImage,'gaussian',0,0.025);
figure;
imshow(afferNoise)
%% applying wiener filter ot image.
afterWiener = wiener2(afferNoise,[6 6]);
figure, imshow(afterWiener)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc; 
%% create a new figure to show the image .
newImg = imread('Water lilies.jpg');
figure(1);
%% convert RGB to gray scale.
grayImage= rgb2gray(newImg)imshow(grayImage);
figure(2);
%% apply prewitt filter.
afterFilter = edge(grayImage,'prewitt')
imshow(afterFilter);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 apply canny filter .
clc; 
%% create a new figure to show the image .
newImg = imread('roughgreen.png');
figure(1);
%% convert RGB to gray scale.grayImage= rgb2gray(newImg)
imshow(grayImage);
figure(2);
%% apply canny filter.cannyResult = edge(grayImage,'canny')
imshow(cannyResult);
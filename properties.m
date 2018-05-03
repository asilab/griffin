clear all
close all
Directory = '10\';
Imgs = dir(fullfile(Directory, '*.jpg'));
for j=1:length(Imgs)
Imgx = imread(fullfile(Directory,Imgs(j).name));
[x,y,z] = size(Imgx);
size_i = sprintf('%d %d %d', x, y, z);
lum_i = mean(Imgx(:));
cont_i = std2(Imgx);
redchannel= mean(Imgx(:,1));
greenchannel=mean(Imgx(:,2));
bluechannel=mean(Imgx(:,3));

%saliencia

disp("----------------------------------");
disp(Imgs(j).name)
disp("Dimen: ");
disp(size_i);
disp("Contrast: ");
disp(cont_i);
disp("Lumi: ");
disp(lum_i);
disp("Red Sat: ");
disp(redchannel);
disp("Green Sat: ");
disp(greenchannel);
disp("Blue Sat: ");
disp(bluechannel); 

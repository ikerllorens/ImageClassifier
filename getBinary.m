function [binary] = getBinary(image)

IM = rgb2gray(image);
% background = imopen(IM,strel('disk',20));
% Display the Background Approximation as a Surface
% figure
% surf(double(background(1:8:end,1:8:end))),zlim([0 255]);
% ax = gca;
% ax.YDir = 'reverse'
% 
IM = im2double(IM);
fun = @median;

% Obtener el backgrpund por medio de la mediana
%Esto seguramente esta mal
%Block = blkproc(IM,'indexed',[681 1024],fun);
Block = blkproc(IM,'indexed',[681 1024],fun);
bkgnd = imresize(Block,[681 1024]);
%
subplot(2,2,1), imshow(bkgnd)

IM_WO = IM - bkgnd;
logical = IM_WO < - 0.05;
logical = (double(logical) - 0.5) .* logical;
IM_WO = IM_WO - logical;
NOBKGND = abs(IM_WO);
NOBKGND = imadjust(NOBKGND);
subplot(2,2,2),imshow(NOBKGND)

% thresh = multithresh(NOBKGND, 1);
% binary = imquantize(NOBKGND, 0.25);
% RGB = label2rgb(binary);


binary = im2bw(NOBKGND, 0.1);
binary = imclearborder(binary);
binary = bwareaopen(binary, 250);
subplot(2,2,3),imshow(binary)
subplot(2,2,4),imshow(image)


end
%imshow(RGB_label)


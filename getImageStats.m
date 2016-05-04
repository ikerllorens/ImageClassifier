function [STATS] = getImageStats(Im)
%Im = imread('proyecto110.jpg');
Im = rgb2gray(Im);
H = fspecial('average');
Im = imfilter(Im,H);

[~, threshold] = edge(Im, 'prewitt');
fudgeFactor = .3;
BW_edge = edge(Im,'prewitt', threshold * fudgeFactor);

se90 = strel('line', 2, 90);
se0 = strel('line', 2, 0);

BW_dil = imdilate(BW_edge, [se90 se0]);

BW_nobord = imclearborder(BW_dil,4);

BW_nobord = bwareaopen(BW_nobord, 50,4);

BW_fill = imfill(BW_nobord, 'holes');


%subplot(1,2,1),imshow(Im,[]);
%subplot(1,2,2),imshow(BW_fill,[]);

[L,Num] = bwlabel(BW_fill,8);

STATS = regionprops(L, 'Area', 'MajorAxisLength', 'MinorAxisLength', 'Eccentricity', 'ConvexArea' ...
    , 'EquivDiameter', 'Perimeter', 'Solidity', 'Extent');



STATS = struct2cell(STATS);
STATS = cell2mat(STATS);

arect = STATS(2,:).*STATS(3,:);
rectangularity = STATS(1,:)./arect;
formFactor = (4*pi.*STATS(1,:))./(STATS(7,:).^2);
MayMen =  STATS(2,:)./STATS(3,:);
Radius = STATS(2,:)./2;
Circularity = STATS(1,:)./(pi.*Radius.^2);


STATS = vertcat(STATS, arect, rectangularity, formFactor, MayMen, Radius, Circularity);

%area_s = regionprops(L,'area');
% area = struct2cell(area_s);

% resultados = ['c', 'o', 'p' ,'c', 'm'];
end
function [Feat] = veichlelogofeat()
Feat=zeros(4,10);
logo1=imread('Logos\opel.png');
logo1=rgb2gray(logo1);
f1=extractLBPFeatures(logo1,'upright',false);
Feat(1,:)=f1;

logo2=imread('Logos\hyundai.png');
logo2=rgb2gray(logo2);
f1=extractLBPFeatures(logo2,'upright',false);
Feat(2,:)=f1;

logo3=imread('Logos\kia.png');
logo3=rgb2gray(logo3);
f1=extractLBPFeatures(logo3,'upright',false);
Feat(3,:)=f1;

logo4=imread('Logos\hyundai.png');
logo4=rgb2gray(logo4);
f1=extractLBPFeatures(logo4,'upright',false);
Feat(4,:)=f1;
end


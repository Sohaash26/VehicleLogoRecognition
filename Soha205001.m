%%READING IMAGES:
case1 = imread("TestCases\Case1\Case1-Front1.bmp");
case2 = imread("TestCases\Case2\Case2-Front2.jpg");
case3 = imread("TestCases\Case2\Case2-Rear1.jpg");
case4 = imread("TestCases\Case2\Case2-Rear2.jpg");
% bmw = imread("Logos\bmw.png");
% chevrolet = imread("Logos\chevrolet.png");
% hyundai = imread('Logos\hyundai.png');
% kia = imread ("Logos\kia.png");
% opel = imread ("Logos\opel.png");
% c3_1 = imread("TestCases\Bounses\Case3\Case 3-1.jpg");
% c3_2 = imread("TestCases\Bounses\Case3\Case 3-2.jpg");
% c3_3 = imread("TestCases\Bounses\Case3\Case 3-3.jpg");
% c3_4 = imread("TestCases\Bounses\Case3\Case 3-4.jpg");
% c4_1 = imread("TestCases\Bounses\Case4\Case 4-1.jpg");
% c4_2 = imread("TestCases\Bounses\Case4\Case 4-2.jpg");
% c4_3 = imread("TestCases\Bounses\Case4\Case 4-3.jpg");
% c5_1 = imread("TestCases\Bounses\Case5\1.jpg");
% c5_2 = imread("TestCases\Bounses\Case5\7.jpg");
% c5_3 = imread("TestCases\Bounses\Case5\8.jpg");
% c5_4 = imread("TestCases\Bounses\Case5\9.jpg");
% c5_5 = imread ("TestCases\Bounses\Case5\10.JPG");

case1g = rgb2gray(case1);
case2g = rgb2gray(case2);
case3g = rgb2gray(case3);
case4g = rgb2gray(case4);

% CASE 1 :
case1_bw = imbinarize(case1g);
removeNoise1 = uint8(medfilt2(case1_bw , [1 1]));
se = strel('square', 1);
case1_bw = imdilate(removeNoise1, se);
case1_cr = imcrop(case1g, [149.5 133.5 27 26]);
edgedetect1 = edge(case1_cr, 'canny');
%case1_areafilt= bwareafilt( case1_bw,2);
imshow(edgedetect1)

% % CASE 2 :
% case2_bw = imbinarize(case2g);
% removeNoise2 = uint8(medfilt2(case2_bw , [1 1]));
% se = strel('square', 1);
% case2_bw2 = imdilate(removeNoise2, se);
% case2_cr = imcrop(case2g, [1145.5 364.5 97 66]);
% edgedetect2 = edge(case2_cr, 'canny');
% imshow(edgedetect2)
% 
% % CASE 3 :
% case3_bw = imbinarize(case3g);
% removeNoise3 = uint8(medfilt2(case3_bw , [1 1]));
% se = strel('square', 1);
% case3_bw = imdilate(removeNoise3, se);
% case3_cr = imcrop(case3g, [156.5 245.5 38 25]);
% edgedetect3 = edge(case3_cr, 'canny');
% imshow(edgedetect3)

% % CASE 4 :
% case4_bw = imbinarize(case4g);
% removeNoise4 = uint8(medfilt2(case4_bw , [1 1]));
% se = strel('square', 1);
% case4_bw = imdilate(removeNoise4, se);
% case4_cr = imcrop(case4g, [480.5 441.5 51 33]);
% edgedetect4 = edge(case4_cr, 'canny');
% imshow(edgedetect4)

% % % LOGOS:
% hyundai = imread('Logos\hyundai.png');
% kia = imread ("Logos\kia.png");
% opel = imread ("Logos\opel.png");
% hyundai_g = rgb2gray(hyundai);
% kia_g = rgb2gray(kia);
% % opel_g = rgb2gray(opel);
% 
% % hyundai logo:
% h_bw = imbinarize(hyundai_g);
% removeNoise_l1 = uint8(medfilt2(h_bw , [1 1]));
% se = strel('square', 1);
% h_bw = imdilate(removeNoise_l1, se);
% edgedetect_l1 = edge(hyundai_g, 'canny');
% imshow(edgedetect_l1)
% % 
% % % kia logo:
% kia_bw = imbinarize(kia_g);
% removeNoise_l2 = uint8(medfilt2(kia_bw , [1 1]));
% se = strel('square', 1);
% kia_bw = imdilate(removeNoise_l2, se);
% edgedetect_l2 = edge(kia_g, 'canny');
% imshow(edgedetect_l2)
% 
% 
% O = imread ("Logos\opel.png");
% H = imread('Logos\hyundai.png');
% K = imread ("Logos\kia.png");

%Op = rgb2gray(O);
% Hy = rgb2gray(H);
% Ki = rgb2gray(K);

% 
% fftOP = fft2(double(O));
% Opfeatures = abs(fftOP(:));
% Opfeatures = sort(Opfeatures,'descend');
% Opfeatures = Opfeatures(1:3);
% 
% 
% fftHy = fft2(double(Hy));
% Hyfeatures = abs(fftHy(:));
% Hyfeatures = sort(Hyfeatures,'descend');
% Hyfeatures = Hyfeatures(1:3);
% 
% 
% fftKi = fft2(double(Ki));
% Kifeatures = abs(fftKi(:));
% Kifeatures = sort(Kifeatures,'descend');
% Kifeatures = Kifeatures(1:3);

% image = edgedetect4;

% fftI=fft2(double(image));
% imagefeatures=abs(fftI(:));
% imagefeatures=sort(imagefeatures,'descend');
% imagefeatures=imagefeatures(1:3);
% 
% features= [Opfeatures,Hyfeatures,Kifeatures];

% New_Image_features = extractLBP+ Features(case4g,'Upright' ,false);
% [Features] = Feature_Extraction_1();
% 
vechile_logos = ["opel","kia","Hyundai","Hyundai"];
dist= zeros(1,3); 
   for i = 1 :3
       s =0; % sumation.
       for j = 1 : 2
           d = (feature2(j)- feat(i,j))^2;
           s = s + d;      
       end
       dist(i) = sqrt(s);
   end
   [~,col] = min(dist);
   classify= vechile_logos{1,col};  
   dis (classify);










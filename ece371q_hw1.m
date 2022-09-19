% Fall 2022
% ECE371Q 
% Homework 1
% Author : Lizette Wong

% Question 1
% part a
q1 = imread("q1.jpg");
figure
imshow(q1);
title('Question 1, Part A')


% part b
% extract color
rChannel = q1(:,:,1); % Red channel
gChannel = q1(:,:,2); % Green channel
bChannel = q1(:,:,3); % Blue channel
blackChannel = zeros(size(q1, 1), size(q1, 2), 'uint8');

% color images
rq1 = cat(3, rChannel, blackChannel, blackChannel);
gq1 = cat(3, blackChannel, gChannel, blackChannel);
bq1 = cat (3, blackChannel, blackChannel, bChannel);

% display
figure();
subplot(2, 2, 1);
imshow(rq1)
title('Red Component')
subplot(2,2,2);
imshow(gq1)
title('Green Component')
subplot(2,2,3);
imshow(bq1)
title('Blue Component')
subplot(2,2,4);
imshow(q1)
title('Original Image')

% part c
% ask to compare this one
yChannel = 0.299*q1(:,:,1) + 0.587*q1(:,:,2) + 0.114*q1(:,:,3);
uChannel = -0.147*q1(:,:,1) - 0.289*q1(:,:,2) + 0.436*q1(:,:,3);
vChannel = 0.615*q1(:,:,1) - 0.515*q1(:,:,2) - 0.1*q1(:,:,3);

yq1 = cat(3, yChannel, blackChannel, blackChannel);
uq1 = cat(3, blackChannel, uChannel, blackChannel);
vq1 = cat (3, blackChannel, blackChannel, vChannel);

figure();
subplot(2, 2, 1);
imshow(yq1)
title('Y Component')
subplot(2,2,2);
imshow(uq1)
title('U Component')
subplot(2,2,3);
imshow(vq1)
title('V Component')
subplot(2,2,4);
imshow(q1)
title('Original Image')

% part d
% convert to gray scale intensity 

gray1 = 0.2989 * q1(:,:,1) + 0.5870 * q1(:,:,2) + 0.1140 * q1(:,:,3);
gray2 = 0.25 * 0.2989 * q1(:,:,1) + 0.25* 0.5870 * q1(:,:,2) + 0.25* 0.1140 * q1(:,:,3);
gray3 = 0.5 * 0.2989 * q1(:,:,1) + 0.5* 0.5870 * q1(:,:,2) + 0.5* 0.1140 * q1(:,:,3);
gray4 = 0.5*q1(:,:,1) + 0.5*q1(:,:,2) + 0.5*q1(:,:,3);

% graph
figure();
subplot(2, 2, 1);
imshow(gray1)
title('Grayscale Image')
subplot(2,2,2);
imshow(gray2)
title('Grayscale Image, 25% Intensity')
subplot(2,2,3);
imshow(gray3)
title('Grayscale Image, 50% Intensity')
subplot(2,2,4);
imshow(gray4)
title('Grayscale Image, Equal Intensity')

% part e helppppp

% part f
vflip = imread('q1.jpg');
[x, y, z] = size(vflip);
% reverse elements
for k = 1: z            % MATLAB is 1 indexed
    len = x;
    for i = 1 : x 
        for j = 1 : y
            if i < x/2
                temp = vflip(i, j, k);
                vflip(i,j,k) = vflip(len, j, k);
                vflip(len, j, k) = temp;
            end
        end
        len = len - 1;
    end
end

figure
imshow(vflip);



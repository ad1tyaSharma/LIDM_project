I = imread("dataset/1.png");
I = imresize(I,0.5);
[L,Centers] = imsegkmeans(I,5);
B = labeloverlay(I,L);
figure()
subplot(121)
imshow(I)
title("Original Image")
subplot(122)
imshow(B)
title(" Labeled Image")
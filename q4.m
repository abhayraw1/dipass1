img = imread('Assign1_imgs/stereo_pair.jpg');
gri = rgb2gray(img);
img_size = size(img);
im1 = gri(:,1:1376);
im2 = gri(:,1377:img_size(2));

pt1 = detectHarrisFeatures(im1);
pt2 = detectHarrisFeatures(im2);

[feature1, pts1] = extractFeatures(im1, pt1);
[feature2, pts2] = extractFeatures(im2, pt2);

match = matchFeatures(feature1, feature2)
size(pts1)
size(pts2)
size(match)
matchedpt1 = pts1(match(:,1),:);
matchedpt2 = pts2(match(:,2),:);

matchedpt1.gather()
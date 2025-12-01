%% OBJ DETECTION SETUP SCRIPT
%% Duncan Likely

filepath = ".\test_imgs\";

images = filepath + ["IMG_9415.jpg" "IMG_9416.jpg" "IMG_9417.jpg"];



img1 = imread(images(1));

input_image = img1;

[frm_height, frm_width, frm_depth] = size(input_image);

scale = 1920/frm_height;

input_image = imresize(input_image, scale);

[frm_height, frm_width, frm_depth] = size(input_image);

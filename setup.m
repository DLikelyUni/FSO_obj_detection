%% OBJ DETECTION SETUP SCRIPT
% Duncan Likely

%% Model Composer Parameters

fs = 100e6;
Ts = 1/fs;

len_dat = 8;
len_dat_frac = 0;

%% Test Images

filepath = ".\test_imgs\";

images = filepath + ["IMG_9415.jpg" "IMG_9416.jpg" "IMG_9417.jpg"];

input_dimensions = [240 320];
dimensions_with_pad = input_dimensions + [84 82];

n_pixels = prod(input_dimensions);
n_pixels_w_pad = prod(dimensions_with_pad);

gen_duration = Ts*n_pixels_w_pad;

img1 = imread(images(1));

input_image = rgb2gray(img1);

[frm_height, frm_width, frm_depth] = size(input_image);

scale = 1080/frm_width;

input_image = imresize(input_image, input_dimensions);
%input_image = input_image';

[frm_height, frm_width, frm_depth] = size(input_image);

line_counter_bits = ceil(log2(frm_width));

data_word_length = int32(len_dat);
data_word_bin_p = int32(len_dat_frac);

[data, SOF, EOL] = img_2_axi4_video_stream(input_image);
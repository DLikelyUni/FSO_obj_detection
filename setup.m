%% OBJ DETECTION SETUP SCRIPT
% Duncan Likely

%% Model Composer Parameters

fs = 100e6;
Ts = 1/fs;

% fxdint data format
len_dat = 8;
len_dat_frac = 0;

% convert type for valid model composer input
data_word_length = int32(len_dat);
data_word_bin_p = int32(len_dat_frac);




%% Test Images

% dir definitions based on host os
if ispc
    filepath = ".\test_imgs\";
elseif isunix
    filepath = "./test_imgs/";
end

images = filepath + ["IMG_9415.jpg" "IMG_9416.jpg" "IMG_9417.jpg"];

%% Input image conditioning

% frame dimensions for resizing
input_dimensions = [240 320];


delay_cycles = input_dimensions(2)+10;

dimensions_with_pad = input_dimensions + [84 82];

n_pixels = prod(input_dimensions);
n_pixels_w_pad = prod(dimensions_with_pad);

img1 = imread(images(1));

input_image = rgb2gray(img1); % greyscale conversion 

%[frm_height, frm_width, frm_depth] = size(input_image);

%scale = 1080/frm_width;

input_image = imresize(input_image, input_dimensions);
%input_image = input_image';

[frm_height, frm_width, frm_depth] = size(input_image);

% convert frame to pixel data arrays
[data, SOF, EOL] = img_2_axi4_video_stream(input_image, frm_width);

line_counter_bits = ceil(log2(frm_width));

% data arrays to timeseries format
frm_duration = Ts*n_pixels;
time_index = (Ts:Ts:frm_duration);

data = timeseries(uint8(data),time_index');
SOF = timeseries(SOF,time_index');
EOL = timeseries(EOL,time_index');


%% Gaussian filter

% create coefficients for use in filter subsystems
kernel = fspecial("gaussian",[11 11], 0.5);








%% Setup file for AXI4-Video-Stream signals generation
% Duncan Likely

if ispc 
	filepath = ".\test_imgs\";
elseif isunix
	filepath = "./test_imgs/";
end
outfile_number = 0;

output_file = "AXI_video_stream_sig.mat";
%save(output_file, 'outfile_number')

images = filepath + ["IMG_9415.jpg" "IMG_9416.jpg" "IMG_9417.jpg"];

input_dimensions = [240 320];
dimensions_with_pad = input_dimensions + [84 82];

n_pixels = prod(input_dimensions);
n_pixels_w_pad = prod(dimensions_with_pad);
pixel_per_transfer = 8;

gen_duration = (Ts*n_pixels_w_pad)/pixel_per_transfer;

img1 = imread(images(1));

input_image = rgb2gray(img1);

[frm_height, frm_width, frm_depth] = size(input_image);

scale = 1080/frm_width;

input_image = imresize(input_image, input_dimensions);
%input_image = input_image';

[frm_height, frm_width, frm_depth] = size(input_image);

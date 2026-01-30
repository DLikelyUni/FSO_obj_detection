%% Show output
% Duncan Likely


% convert SOF EOL signals back to logical values for input to conversion
% function
sof_bin = logical(out.sof_out.Data);
sof_raw_bin = logical(out.sof_out_raw.Data);
eol_bin = logical(out.eol_out.Data);
eol_raw_bin = logical(out.eol_out_raw.Data);

[output_img, output_data] = axi4_video_stream_2_image(out.data_out.Data, sof_bin, eol_bin);
output_img = uint8(output_img);

[input_img, input_data] = axi4_video_stream_2_image(out.data_out_raw.Data, sof_bin, eol_bin);
input_img = uint8(input_img);

% Blur using matlab funtion to compare results
mat_blur = imgaussfilt(input_image);


% show reconstructed images for filtered and raw data
tiledlayout(2,2);
nexttile
imshow(output_img);
title('Frame filtered by model composer design')
nexttile
imshow(input_img);
title('Raw input frame')
nexttile
imshow(mat_blur);
title('Frame filtered using matlab function')
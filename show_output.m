%% Show output
% Duncan Likely

output_img = axi4_video_stream_2_image(out.data_out.Data, out.sof_out.Data, out.eol_out.Data);
output_img = uint8(output_img);

input_img = axi4_video_stream_2_image(out.data_out_raw.Data, out.sof_out_raw.Data, out.eol_out_raw.Data);
input_img = uint8(input_img);

tiledlayout(2,1);
nexttile
imshow(output_img);
nexttile
imshow(input_img);
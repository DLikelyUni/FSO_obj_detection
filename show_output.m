%% Show output
% Duncan Likely

output_img = axi4_video_stream_2_image(out.data_out.Data, out.sof_out.Data, out.eol_out.Data);
output_img = uint8(output_img);
imshow(output_img);
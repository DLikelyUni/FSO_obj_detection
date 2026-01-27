%% Duncan Likely
% function converting AXI4 video stream format data to a greyscale image


function image = axi4_video_stream_2_image(data, SOF, EOL, frm_height, frm_width, frm_depth)

image = zeros(frm_height, frm_width, frm_depth);

for i = 1:frm_height
    for j = 1:frm_width
        image(i,j) = data(i*j);
    end
end


end
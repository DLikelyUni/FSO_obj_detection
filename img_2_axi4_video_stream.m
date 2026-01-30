%% Duncan Likely
% function converting greyscale image to the AXI4 video stream format


function [data, SOF, EOL] = img_2_axi4_video_stream(image,width)

[frm_height, frm_width, frm_depth] = size(image);

data = zeros(frm_width*frm_height,1);
SOF = zeros(frm_width*frm_height,1);
EOL = zeros(frm_width*frm_height,1);

offset = 0;

for i = 1:frm_height
    if i == 1
        SOF(i) = 1;
    end

    for j = 1:frm_width
        data(j+offset) = image(i,j);
        if j == frm_width
            EOL(i*j) = 1;
            offset = offset+width;
        end


    end
end

SOF = logical(SOF);
EOL = logical(EOL);

end
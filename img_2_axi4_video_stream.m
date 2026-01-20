function [data, SOF, EOL] = img_2_axi4_video_stream(image)

[frm_height, frm_width, frm_depth] = size(image);

data = zeros(frm_width*frm_height,1);
SOF = zeros(frm_width*frm_height,1);
EOL = zeros(frm_width*frm_height,1);

for i = 1:frm_height
    if i == 1
        SOF(i) = 1;
    end

    for j = 1:frm_width
        data(i*j) = image(i,j);
        if j == frm_width
            EOL(i*j) = 1;
        end


    end
end

SOF = logical(SOF);
EOL = logical(EOL);

end
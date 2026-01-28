%% Duncan Likely
% function converting AXI4 video stream format data to a greyscale image


function image = axi4_video_stream_2_image(data, SOF, EOL)

    n_pixels = length(data)-1;
    
    % calc and init output frame size
    frm_height = 240; %sum(EOL);
    frm_width = 320; % n_pixels/frm_height;
    frm_depth = 1;
    image = zeros(frm_height, frm_width, frm_depth); 
    
    j = 1; % vert line count
    offset = 0; % relative position in line from total pixel n
    %i = 1;
    
    for x = 1:n_pixels
       %i = x - offset;
       image(j,(x-offset)) = uint8(data(x));
       if EOL(x) == true
          offset = offset + frm_width;
          j = j + 1;
       end
    end


end
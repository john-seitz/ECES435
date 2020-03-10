function [newpix] = pixcorrect(oldpix,LUTvals)
% This function corrects by using the look up table values going from right to left

    oldpix = oldpix + 1; %correct the range to 1-256 to match the look up table values
    newvalue = ~LUTvals(oldpix);  % assign the new desired value by interverting the original
    P = 1;
    while 1
        if (oldpix+P <= 256) && (LUTvals(oldpix+P) == newvalue)
            newpix = oldpix + P-1; % reset the range to the original 0-255
            break;
        elseif (oldpix-P >= 1)&&(LUTvals(oldpix-P) == newvalue)
            newpix = oldpix - P-1;
            break;
        else
        P=P+1;
    end
end


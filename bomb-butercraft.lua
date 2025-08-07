
function lines_from_file(file)
    lines = {}
    for line in io.lines(file) do 
        lines[#lines + 1] = line
    end
return lines
end


function slice(list, start, stop)
    return table.unpack(list, start, stop)
end


function color_changer(variable)

end


function convertPPM_TO_NFP(img)
    temp_file = io.tmpfile()
    --make temp file
    img = slice(lines_from_file(""), 4)
    for x in img do
        for y in x do
            temp_file:write(color_changer(y) + "")
            print(y)
            --math to transport
        end
    end
    img.close()
    return temp_file

    --return temp file
    --surely reference
end


function draw_image(list_images, sleeptime)
    img = paintutils.loadImage("mina_saker/kuk.nfp")
    paintutils.drawImage(img, 1,1)
end


function start ()
    mon = peripheral.find("monitor")
    mon.clear()
    mon.setCursorPos(1,1)
    mon.setTextScale(0.5)
    mon.setBackgroundColour(colors.black)
    term.redirect(mon)
end


start()

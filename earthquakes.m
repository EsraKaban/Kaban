GT = readgeotable("tsunamis.shp",CoordinateSystemType="geographic");

bbox = geopolyshape([-0.90833000],[119.87083000]);
inpoly = isinterior(bbox,GT.Shape);
GT2 = GT(inpoly,:);

figure
h = geoplot(GT2,ColorVariable="Year",MarkerSize=20);

geobasemap grayterrain
colorbar
title("tsunamis by Year")

h.ColorVariable = "Max_Height";
title("Tsunamis by Maximum Height")
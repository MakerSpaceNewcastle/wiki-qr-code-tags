include <qr.scad>

thickness = 1;
qr_depth = 0.4;

qr_size = 50;
margin = 5;
text_offset = -32;

module Body()
{
  cube([qr_size+margin, qr_size+margin, thickness], center=true);

  translate([0, text_offset, 0])
  {
    cube([qr_size+margin, 15, thickness], center=true);
  }
}

module QrCode(url)
{
  color("red")
  {
    translate([0, 0, (thickness/2)-qr_depth])
    {
      qr(url, width=qr_size, height=qr_size, center=true, thickness=qr_depth);
    }
  }
}

module Text()
{
  color("blue")
  {
    translate([0, text_offset, (thickness/2)-qr_depth])
    {
      linear_extrude(qr_depth)
      {
        text("Wiki", halign="center", valign="center");
      }
    }
  }
}

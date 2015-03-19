$fn = 180;

r_cyl_in = 43/2;
r_cyl_out = 50/2;
wall_w = 5;

r_out = 95;
h_out = 120;
cone_h = 120;
inset = 20;

difference() {
    union() {
        cylinder (cone_h, r_out , 0);
        cylinder (h_out, r_cyl_out+wall_w, r_cyl_out+wall_w);
        cylinder (15, r_out, r_out);
    }
    translate([0,0,-10]) {
        union() {
            cylinder (cone_h, r_out , 0);
            cylinder (200, r_cyl_in, r_cyl_in);
        }
    }
    translate([0,0,h_out - inset]) {
        cylinder (200, r_cyl_out, r_cyl_out);
    }
}
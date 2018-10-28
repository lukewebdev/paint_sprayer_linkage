$fn = 30;

link_w = 48;
link_l = 12.5;
link_h = 24.3;

linkco_d = link_l; //link circle outter diameter
linkc_width = 2; //link circle wall thickness
linkc_h = 6.75;  // z (height)


socket_difference_d = 13;

tendon_w = 17;
tendon_l = 12.85;
tendon_h = 7;

base_h = 6.15;

base_render();

module linkage_1(){


}


module base_render(){//stuff and substract stuff
    difference(){
        base();
        base_diff();
    }
    
}
module base(){
    cube([link_w - linkco_d, link_l, base_h], center =true);
    base_circle();
    mirror([1,0,0])
    base_circle();
    tendon();
}

module base_diff(){
    base_circle_diff();
    mirror([1,0,0])
    base_circle_diff();
}

module base_circle(){
        color("red")
        translate([link_w/2 - linkco_d/2,0,-(linkc_h - base_h)/2])
        cylinder(h = linkc_h, d = linkco_d, center = true);
 
}

module base_circle_diff(){
    color("green")
    translate([link_w/2 - linkco_d/2,0,-(linkc_h - base_h)/2 + linkc_width/2])
    cylinder(h = linkc_h - linkc_width, d = linkco_d - (linkc_width*2), center = true); 
}

module tendon(){
    translate([0,0,tendon_h/2 + base_h/2])
    cube([tendon_w, tendon_l, tendon_h], center=true);
}
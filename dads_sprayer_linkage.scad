link_x = 48;
link_y = 12.5;
link_z = 24.3;

linkco_d = link_y; //link circle outter diameter
linkci_d = 8.2; //link circle inner diameter
linkc_z = 6.75;  // z (height)


socket_difference_d = 13;

tendon_x = 17;
tendon_y = 12.85;
tendon_z = 7;

base_z = 6.15;

base();

module linkage_1(){


}

module base(){
    cube([link_x - linkco_d, link_y, base_z], center =true);
    
    base_circle();
    mirror([1,0,0])
    base_circle();

}

module base_circle(){
    color("red")
    translate([link_x/2 - linkco_d/2,0,-(linkc_z - base_z)/2])
    cylinder(h = linkc_z, d = linkco_d, center = true);
}
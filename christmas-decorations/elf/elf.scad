

difference(){
    
    translate([ 8, 0, 0])
    cube([ 190, 300, 1]);
    
    translate([ 0, 0, -1])
    linear_extrude(3)
    import("./include/elf.svg");
    
    translate([ 127, 100, -1])
    cylinder(h = 3, d = 8);
}

translate([ 100, 78, 0])
cylinder(h = 1, d = 20);

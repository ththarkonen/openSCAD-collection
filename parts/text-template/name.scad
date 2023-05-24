
$fn = 100;

difference(){
    
    cube([ 220, 310, 1]);
    
    translate([ 5, 5, -1])
    linear_extrude( 10 )
    import("./latex.svg");
}

translate([ 85, 27.5, 0])
cube([ 20, 4, 1]);

translate([ 85, 105 + 27.5, 00])
cube([ 20, 4, 1]);

translate([ 0, 223.5 + 27.5, 0])
cube([ 40, 4, 1]);

translate([ 110, 235 + 27.5, 0])
cube([ 60, 4, 1]);










$fn = 100;

difference(){
    
    cylinder( d = 52, h = 15);
    
    translate([ 0, 0, 2])
    cylinder( d = 48, h = 13.1);
    
    translate([ 0, 0, -3])
    cylinder( d = 10, h = 6);
    
    rotate([ 0, 90, 0])
    translate([ -13, 0, 20])
    cylinder( d = 3, h = 10);
    
    translate([ 22, -1.5, 13])
    cube([ 10, 3, 10]);
};
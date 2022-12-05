
intersection(){
    
    cube([230, 300, 3]);
    
    difference(){
        
        linear_extrude(1)
        import("./include/deer.svg");
        
        translate([ 112, 212, -1])
        cylinder( h = 4, d = 13);
    };
}

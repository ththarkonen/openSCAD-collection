
difference(){
    
    union(){
        rotate([ 0, 0, 60])
        linear_extrude( 1 )
        import("./include/snowflake.svg", center = true);
        
        linear_extrude( 1 )
        import("./include/snowflake.svg", center = true);
    };
}


module endPiece(){

$fn = 100;

totalHeight = 12.5;
innerDiameter = 8.5;

outerCylinderDiameter = 12;
outerCylinderHeight = 9.5;

innerCylinderDiameter = 4.5;
innerCylinderLocation = 2.5;
    
cuts = 8;
cutDepth = outerCylinderDiameter - innerDiameter - 2;
cutWidth = 1;
cutTranslate = innerDiameter;

angleStep = 360 / ( cuts );

difference(){
    
    union(){
        cylinder( h = totalHeight, d = innerDiameter);
    };
    
    translate([ 0, 0, innerCylinderLocation])
    cylinder( h = totalHeight, d = innerCylinderDiameter);
    
};


  
    for( ii = [0:1:cuts] ){
      
      angle_ii = ii * angleStep;
      rotate([ 0, 0, angle_ii])
      translate([ 0.5*innerDiameter - 1, 0])
        
        minkowski(){
            translate([0, -0.5*cutWidth, 0])
      cube([ cutDepth + 1, cutWidth, outerCylinderHeight - 1]);
            cylinder( h = 1, r = 1);
        }
    };

}

endPiece();
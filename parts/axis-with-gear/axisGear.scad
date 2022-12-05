
$fn = 100;
use <gearPiece.scad>

innerDiameter = 4;
outerDiameter = 5.6;

totalHeight = 41;

botCylinderHeight = 18;
shortCylinderHeight = 2;

midCylinderStartLocation = botCylinderHeight + shortCylinderHeight;
midCylinderHeight = 6;

coneStartLocation = midCylinderStartLocation + midCylinderHeight;
coneHeight = 3.0;
coneEndDiameter = 4.4;

coneToCylinderHeight = 6.5;

midConesCylinderLocation = coneStartLocation + coneHeight;
midConesCylinderDiameter = 4.4;

secondConeLocation = coneStartLocation + coneHeight + coneToCylinderHeight;
secondConeHeight = 2;
secondConeEndDiameter = 6;

secondConeToCylinderLocation = secondConeLocation + secondConeHeight;
secondConeToCylinderHeight = 2;
secondConetoCylinderDiameter = 4.6;

endPieceLocation = secondConeLocation + secondConeHeight + secondConeToCylinderHeight;

cylinder( h = totalHeight, d = innerDiameter);
cylinder( h = botCylinderHeight, d = outerDiameter);

translate([ 0, 0, midCylinderStartLocation])
cylinder( h = midCylinderHeight, d = outerDiameter);

translate([ 0, 0, coneStartLocation])
cylinder( h = coneHeight, d1 = outerDiameter, d2 = coneEndDiameter);

translate([ 0, 0, midConesCylinderLocation])
cylinder( h = coneToCylinderHeight, d = midConesCylinderDiameter);

translate([ 0, 0, secondConeLocation])
cylinder( h = secondConeHeight, d1 = midConesCylinderDiameter, d2 = secondConeEndDiameter);

translate([ 0, 0, secondConeToCylinderLocation])
cylinder( h = secondConeToCylinderHeight + 1, d = secondConetoCylinderDiameter);

translate([ 0, 0, endPieceLocation])
endPiece();


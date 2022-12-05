
$fn = 60;

height = 200;
nSteps = 40;

startAngle = 0;
endAngle = 180;

angleStep = ( endAngle - startAngle ) / nSteps;

hStep = height / ( nSteps - 1 );

angleVector = [startAngle:angleStep:endAngle];
hVector = [0:hStep:height];

echo( hStep );

difference(){
    
for( ii = [1:nSteps-1]){
    
    theta_0 = ( ii - 1 ) * angleStep;
    theta_ii = ii * angleStep;
    
    r_0 = 0.5 * (1 - 0.4 * sin( theta_0 ))*123;
    r_ii = 0.5 * (1 - 0.4 * sin( theta_ii ))*123;
    
    ratio_ii = 0.5 * (1 - 0.4 * sin( theta_ii ))*123 / ( 0.5 * (1 - 0.4 * sin( theta_0 )) * 123 );
    
    translate([ 0, 0, ( ii - 1 + 0.5 ) * hStep])
    linear_extrude(height = hStep, center = true, convexity = 10, twist = -0, slices = 20, scale = ratio_ii)
    circle( d = 0.5 * (1 - 0.4 * sin( theta_0 ))*123 );
};

for( ii = [3:nSteps+1]){
    
    theta_0 = ( ii - 1 ) * angleStep;
    theta_ii = ii * angleStep;
    
    r_0 = 0.5 * (1 - 0.4 * sin( theta_0 ))*111;
    r_ii = 0.5 * (1 - 0.4 * sin( theta_ii ))*111;
    
    ratio_ii = 0.5 * (1 - 0.4 * sin( theta_ii ))*111 / ( 0.5 * (1 - 0.4 * sin( theta_0 )) *111 );
    
    translate([ 0, 0, ( ii - 1 + 0.5 - 0.001 ) * hStep])
    linear_extrude(height = 1.002*hStep, center = true, convexity = 10, twist = -0, slices = 20, scale = ratio_ii)
    circle( d = 0.5 * (1 - 0.4 * sin( theta_0 ))*111 );
};

rotate([0, 180, 180])
linear_extrude(5, center = true)
    text("Text", halign = "center", valign = "center", font = "Times New Roman:style=Italic");




}
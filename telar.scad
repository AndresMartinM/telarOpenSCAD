
cantidadUrdimbre = 21;
separacion = 4;
borde = 8;
grosorRendijas = 2;
alturaRendijas = 30;

union(){
    difference(){
        cube([borde*2+separacion*(cantidadUrdimbre-1)+grosorRendijas,1,alturaRendijas+borde*2]);
        for(i=[0:(cantidadUrdimbre-1)]){
            translate([i*separacion + borde,-0.5,-0.5]) {
            if (i % 2 == 0) cube([grosorRendijas,3,grosorRendijas]);
                else cube([grosorRendijas,3,alturaRendijas]);
            }
        }
    }
}
mirror([0,0,1]){
    difference(){
        cube([borde*2+separacion*(cantidadUrdimbre-1)+grosorRendijas,1,alturaRendijas+borde*2]);
        for(i=[0:(cantidadUrdimbre-1)]){
            translate([i*separacion + borde,-0.5,-0.5]) {
            if (i % 2 == 0) cube([grosorRendijas,3,grosorRendijas]);
                else cube([grosorRendijas,3,alturaRendijas]);
            }
        }
    }
}

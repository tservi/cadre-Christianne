
// variables en mm
epaisseur = 3;
largeur = 50;
// cylindre intérieur

translate([222,25,0])
    cylinder(600,55,55,false);
// premiere branche
cube([100,largeur,epaisseur],[0,0,0]);
translate([100,0,0])
    cube([epaisseur,largeur,400]);
translate([100,0,0])
    translate([0,0,400])
        rotate([0,15,0])    
            cube([epaisseur,largeur,500]);
translate([0,0,880])
    translate([230.5,0,0])
        rotate([0,-30,0])
            cube([100,largeur,epaisseur]);
translate([0,0,930])
    translate([314.5,0,0])
        cube([100,largeur,epaisseur]);
translate([0,0,933])
    translate([414.5,0,0])
        rotate([0,90,0])
            difference()
            {
                polyhedron(
                    points = [
                    [0,0,0],     //0
                    [epaisseur,0,0,],    //1
                    [epaisseur,largeur,0],   //2
                    [0,largeur,0],   //3
                    [0,0.75 * largeur,65],   //4
                    [epaisseur,0.75 * largeur,65] ,  //5
                    ],
                    faces = [
                    [4,0,3],
                    [0,4,5,1],
                    [0,1,2,3],
                    [3,2,4,5],
                    [1,5,2]
                    ]
                );
                translate([0,largeur/2,15])
                    rotate([0,90,0])
                        cylinder(6*epaisseur, 5,5);
            };
 // seconde branche
 translate([300,0,0])
    {
        cube([100,largeur,epaisseur],[0,0,0]);
        polyhedron(
        points = [
        [ 0,0,0 ], //0
        [ epaisseur,0,0 ], //1
        [ epaisseur,largeur,0 ], //2
        [ 0,largeur,0 ], //3
        [ 0,0,650], //4
        [ epaisseur,0,650 ], //5
        [ epaisseur,largeur,720 ], //6
        [ 0,largeur,720 ], //7
        ],
        faces = [
        [ 0,3,7,4 ] ,
        [ 0,1,2,3 ] ,
        [ 3,2,6,7 ] ,
        [ 7,6,5,4 ] ,
        [ 4,5,1,0 ] ,
        [ 1,2,6,5 ] ,
        ]
        );
        //echo(atan(70/largeur));
        //translate([0,0,500])
            //rotate([ 0,-45,0])
                //rotate([0,0,-atan(70/largeur)])
                    polyhedron(
                    points = [
                    [ 0,0,650 ] , // 0
                    [ epaisseur,0,650 ] , // 1
                    [ epaisseur,largeur,720 ] , // 2
                    [ 0,largeur,720 ] , // 3
                    [ -105,0, 750] , // 4
                    [ -105+epaisseur, 0, 750 ] , // 5
                    [ -85+epaisseur, largeur, 820] , // 6
                    [ -85, largeur, 820 ] , // 7
                    ] ,
                    faces = [
                    [ 0,3,7,4 ] ,
                    [ 0,1,2,3 ] ,
                    [ 3,2,6,7 ] ,
                    [ 7,6,5,4 ] ,
                    [ 4,5,1,0 ] ,
                    [ 1,2,6,5 ] ,
                    ]
                    );
    }
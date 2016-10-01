
// variables en mm
epaisseur = 3;
largeur = 50;
// cylindre intérieur
translate([175,25,0])
    cylinder(500,50,50,false);
// premiere branche
cube([100,largeur,epaisseur],[0,0,0]);
translate([100,0,0])
    cube([epaisseur,largeur,500]);
translate([100,0,0])
    translate([0,0,500])
        rotate([0,45,0])    
            cube([epaisseur,largeur,214]);
translate([0,0,648.2])
    translate([251,0,0])
        rotate([0,0,0])
            difference()
            {
                cube([100,largeur,epaisseur]);
                translate([50,largeur/2,-epaisseur])
                    cylinder(4*epaisseur, 5,5);
            };

/*
translate([0,0,776])
    translate([315,0,0])
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
 */
 // seconde branche
 translate([250,0,0])
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
        [ epaisseur,largeur,650 ], //6
        [ 0,largeur,650 ], //7
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
                    /*
                    polyhedron(
                    points = [
                    [ 0,0,500 ] , // 0
                    [ epaisseur,0,500 ] , // 1
                    [ epaisseur,largeur,570 ] , // 2
                    [ 0,largeur,570 ] , // 3
                    [ -105,0, 600] , // 4
                    [ -105+epaisseur, 0, 600 ] , // 5
                    [ -85+epaisseur, largeur, 670] , // 6
                    [ -85, largeur, 670 ] , // 7
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
                    */
    }
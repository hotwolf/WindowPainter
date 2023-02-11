//###############################################################################
//# WindowPainter - Stepper Motor Mount Assembly                                #
//###############################################################################
//#    Copyright 2023 Dirk Heisswolf                                            #
//#    This file is part of the WindowPainter project.                          #
//#                                                                             #
//#    This project is free software: you can redistribute it and/or modify     #
//#    it under the terms of the GNU General Public License as published by     #
//#    the Free Software Foundation, either version 3 of the License, or        #
//#    (at your option) any later version.                                      #
//#                                                                             #
//#    This project is distributed in the hope that it will be useful,          #
//#    but WITHOUT ANY WARRANTY; without even the implied warranty of           #
//#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the            #
//#    GNU General Public License for more details.                             #
//#                                                                             #
//#    You should have received a copy of the GNU General Public License        #
//#    along with this project.  If not, see <http://www.gnu.org/licenses/>.    #
//#                                                                             #
//#    This project makes use of the NopSCADlib library                         #
//#    (see https://github.com/nophead/NopSCADlib).                             #
//#                                                                             #
//###############################################################################
//# Description:                                                                #
//#   Stepper motor mount assembly of the WindowPainter.                        #
//#                                                                             #
//###############################################################################
//# Version History:                                                            #
//#   January 21, 2023                                                          #
//#      - Initial release                                                      #
//#                                                                             #
//###############################################################################

include <./WPConfig.scad>

//Set view
//$vpt = [25,30,20];
//$vpr = [80,0,340];


//hull() {
//translate([10,10,40]) linear_extrude(0.1) circle(20);
//translate([-10,-10,60]) linear_extrude(0.1) circle(20);
//}


module WPStepperMount () {
  difference() {
    union() {
      hull() {  
        translate([ NEMA_hole_pitch(stepperT)/2, NEMA_hole_pitch(stepperT)/2,-10]) cylinder(h=5.5,d=8);  
        translate([-NEMA_hole_pitch(stepperT)/2, NEMA_hole_pitch(stepperT)/2,-10]) cylinder(h=5.5,d=8);
      }  
      hull() {  
        translate([-NEMA_hole_pitch(stepperT)/2,-NEMA_hole_pitch(stepperT)/2,-10]) cylinder(h=5.5,d=8);  
        translate([-NEMA_hole_pitch(stepperT)/2, NEMA_hole_pitch(stepperT)/2,-10]) cylinder(h=5.5,d=8);
      }  
      translate([-NEMA_hole_pitch(stepperT)/2,0,-10]) 
        cube([NEMA_hole_pitch(stepperT)/2,NEMA_hole_pitch(stepperT)/2,5.5]);
      translate([0,0,-10]) cylinder(h=1.5,d=39);
      translate([0,0,-10]) cube([4+NEMA_hole_pitch(stepperT)/2,NEMA_hole_pitch(stepperT)/2,1.5]);
      translate([-NEMA_hole_pitch(stepperT)/2,-4-NEMA_hole_pitch(stepperT)/2,-10])
        cube([NEMA_hole_pitch(stepperT)/2,4+NEMA_hole_pitch(stepperT)/2,1.5]);
 
      hull() {
        hull() {  
          translate([ 8+NEMA_hole_pitch(stepperT)/2, 8+NEMA_hole_pitch(stepperT)/2,8]) cylinder(h=2,d=8,$fn=16);  
          translate([-8-NEMA_hole_pitch(stepperT)/2, 8+NEMA_hole_pitch(stepperT)/2,8]) cylinder(h=2,d=8,$fn=16);
          translate([   NEMA_hole_pitch(stepperT)/2,   NEMA_hole_pitch(stepperT)/2,8]) cylinder(h=2,d=8);  
          translate([  -NEMA_hole_pitch(stepperT)/2,   NEMA_hole_pitch(stepperT)/2,8]) cylinder(h=2,d=8);
        }  
         hull() {  
          translate([ NEMA_hole_pitch(stepperT)/2, NEMA_hole_pitch(stepperT)/2,-6.5]) cylinder(h=2,d=8);  
          translate([-NEMA_hole_pitch(stepperT)/2, NEMA_hole_pitch(stepperT)/2,-6.5]) cylinder(h=2,d=8);
         }  
      }
      hull() {
        hull() {  
          translate([-8-NEMA_hole_pitch(stepperT)/2,-8-NEMA_hole_pitch(stepperT)/2,8]) cylinder(h=2,d=8,$fn=16);  
          translate([-8-NEMA_hole_pitch(stepperT)/2, 8+NEMA_hole_pitch(stepperT)/2,8]) cylinder(h=2,d=8,$fn=16); 
          translate([  -NEMA_hole_pitch(stepperT)/2,  -NEMA_hole_pitch(stepperT)/2,8]) cylinder(h=2,d=8);  
          translate([  -NEMA_hole_pitch(stepperT)/2,   NEMA_hole_pitch(stepperT)/2,8]) cylinder(h=2,d=8);
       }  
        hull() {  
          translate([-NEMA_hole_pitch(stepperT)/2,-NEMA_hole_pitch(stepperT)/2,-6.5]) cylinder(h=2,d=8);  
          translate([-NEMA_hole_pitch(stepperT)/2, NEMA_hole_pitch(stepperT)/2,-6.5]) cylinder(h=2,d=8);
        }  
      }
 
      difference() {
        hull() { 
          translate([0,0,-10]) cylinder(h=2,d=40);
          translate([0,0,3]) cylinder(h=7,d=56);
        }
        union() {
          rotate([0,0,315]) translate([0,-40,-12]) cube([40,80,30]);
          translate([-20,-20,-12]) cube([40,40,10]);
        }
      }
        
    }
    union() {   
      NEMA_screw_positions(stepperT, n=3) {
        translate([0,0,-12]) cylinder(h=10,r=screw_clearance_radius(M3_pan_screw));
        translate([0,0,-8]) cylinder(h=60,d=washer_diameter(M3_washer)+0.1);
      }
      translate([0,0,-12]) cylinder(h=10,r=NEMA_boss_radius(stepperT));
      translate([0,0,-12]) cylinder(h=10,d=23);
      hull() {
        translate([0,0,-5]) cylinder(h=20,d=46);
        translate([0,0, 3]) cylinder(h=12,d=52);
      }
      
      transrot([-8-NEMA_hole_pitch(stepperT)/2,-8-NEMA_hole_pitch(stepperT)/2,-2],[0,0,45]) nut_trap(M3_dome_screw, M3_nut,depth=10,h=40);  
      transrot([-8-NEMA_hole_pitch(stepperT)/2, 8+NEMA_hole_pitch(stepperT)/2,-2],[0,0,-15]) nut_trap(M3_dome_screw, M3_nut,depth=10,h=40);
      transrot([ 8+NEMA_hole_pitch(stepperT)/2, 8+NEMA_hole_pitch(stepperT)/2,-2],[0,0,-15]) nut_trap(M3_dome_screw, M3_nut,depth=10,h=40);
   
      
      
    }
  }
}
*WPStepperMount();


module WPStepperMountLeft_stl() {
  stl("WPStepperMountLeft");
  color(pp1_colour)
  WPStepperMount();
}

module WPStepperMountRight_stl() {
  stl("WPStepperMountRight");
  color(pp1_colour)
  mirror([0,1,0]) WPStepperMount();
}

//! TBD
module WPStepperMountRight_assembly() {
  pose([25,30,20], [80,0,240])
  assembly("WPStepperMountRight") {

    transrot([0,0,0],[0,0,0])   WPStepperMountRight_stl();
    transrot([0,0,-8],[0,0,90]) NEMA_screws(stepperT, M3_pan_screw, n=3);   
    transrot([0,0,-10],[0,0,0]) NEMA(stepperT, 0, true);

    *translate([-100,-100,10]) cube([200,200,2]);
      
  }
}

//! TBD
module WPStepperMountLeft_assembly() {
    pose([25,30,20], [80,0,180])
    assembly("WPStepperMountLeft") {
 
    transrot([0,0,0],[0,0,0])     WPStepperMountLeft_stl();
    transrot([0,0,-8],[0,0,0])    NEMA_screws(stepperT, M3_pan_screw, n=3);   
    transrot([0,0,-10],[0,0,180]) NEMA(stepperT, 0, true);

    *translate([-100,-100,10]) cube([200,200,2]);
        
    }
}

if($preview||true) {
//   $explode = 1;
   *WPStepperMountRight_assembly();
   WPStepperMountLeft_assembly();
}

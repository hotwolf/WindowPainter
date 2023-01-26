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
        translate([  NEMA_hole_pitch(stepperT)/2,  NEMA_hole_pitch(stepperT)/2,-10]) cylinder(h=2,d=8);  
        translate([6+NEMA_hole_pitch(stepperT)/2,+NEMA_hole_pitch(stepperT)/2,5]) cylinder(h=2,d=8);  
      }
  
  
  
  
      
    }
    union() {   
      NEMA_screw_positions(stepperT, n=3) {
        translate([0,0,-12]) cylinder(h=10,r=screw_clearance_radius(M3_pan_screw));
        translate([0,0,-8]) cylinder(h=20,d=washer_diameter(M3_washer)+0.1);
      }
      *translate([0,0,-12]) cylinder(h=10,r=NEMA_boss_radius(stepperT));
      translate([0,0,-12]) cylinder(h=10,d=23);
    }
  }
}
*WPStepperMount();


module WPStepperMountLeft_stl() {
  stl("WPStepperMountLeft");
  WPStepperMount();
}

module WPStepperMountRight_stl() {
  stl("WPStepperMountRight");
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

if($preview) {
//   $explode = 1;
   *WPStepperMountRight_assembly();
   WPStepperMountLeft_assembly();
}

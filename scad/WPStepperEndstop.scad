//###############################################################################
//# WindowPainter - Endstop Assembly                                            #
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
//#   Endstop with SS-GL5 microswitch.                                          #
//#                                                                             #
//###############################################################################
//# Version History:                                                            #
//#   February 5, 2023                                                          #
//#      - Initial release                                                      #
//#                                                                             #
//###############################################################################

include <./WPConfig.scad>

//Set view
//$vpt = [25,30,20];
//$vpr = [80,0,340];


module ss_gl5() {
    
  translate([4.8-14.5,-5.1-1.5,0]) microswitch(medium_microswitch);    
  color("silver") {
    transrot([-17,-1.5,-1.8],[0,0,18]) cube([17,0.5,3.6]);
    translate([-17,-3,-1.8]) cube([0.5,1.8,3.6]);
  }   
}
*ss_gl5();

//Endstop
module WPEndstop() {
 rotate_extrude () intersection() {    
    translate([0,-2,0]) square([4,4]);
    translate([5.5,0,0]) circle(r=2.5);
  }
}

module WPEndstopRight_stl() {
  stl("WPEndstopRight");
  WPEndstop();
}

module WPEndstopRight_assembly() {
  pose([25,30,20], [80,0,240])
  assembly("WPEndstopRight") {
  
      WPEndstopRight_stl();
  }
}
WPEndstopRight_assembly();

module WPStepperClamp () {

  //Inside
  difference() {
    union() {
      translate([14,-61,-34]) cube([8,47,20]);
      for(y=[-22,-37,-61]) {
        hull() {  
          translate([7,y,-14]) cube([15,8,4]);
          translate([14,y,-34]) cube([8,8,20]);
        }    
      }
      translate([14,-22,-34]) cube([47,8,20]);
      for(x=[14,29,53]) {
        hull() {  
          translate([x,-22,-14]) cube([8,15,4]);
          translate([x,-22,-34]) cube([8,8,20]);
        }    
      }    
    }  
    union() {
      transrot([45,-30,-24],[90,0,0]) hull()
        screwClampShoe(type=M5_hex_screw,length=20);
      transrot([45,-10,-24],[90,0,0]) cylinder(h=20,r=screw_clearance_radius(M5_hex_screw)); 
      hull() {
        for (z=[-24,-44]) {
          transrot([45,-15.9,z],[90,30,0]) 
            cylinder(h=nut_trap_depth(M5_nut)+0.2,r=nut_radius(M5_nut)+0.2,$fn=6);
        }
      }
      transrot([30,-45,-24],[0,90,0]) hull()
        screwClampShoe(type=M5_hex_screw,length=20); 
      transrot([10,-45,-24],[0,90,0]) cylinder(h=20,r=screw_clearance_radius(M5_hex_screw)); 
      hull() {
        for (z=[-24,-44]) {
          transrot([15.9,-45,z],[0,90,0]) 
            cylinder(h=nut_trap_depth(M5_nut)+0.2,r=nut_radius(M5_nut)+0.2,$fn=6);
        }
      }
    }
  }
  //Front
  translate([-90,-61,-14]) cube([112,60,4]);
  translate([-79,-22,-14]) cube([140,112,4]);
      
  //Outside
  translate([-87,-61,-24]) cube([2,60,10]);
  for (y=[-5:-8:-64]) { 
    hull() {
      translate([-90,y,-14]) cube([5,4,4]);
      translate([-87,y,-24]) cube([2,4,10]);
    }
  }
  translate([-79,85,-24]) cube([140,2,10]);
  for (x=[-79:8:58]) { 
    hull() {
      translate([x,85,-14]) cube([4,5,4]);
      translate([x,85,-24]) cube([4,2,10]);
    }
  }     
}
*WPStepperClamp();

module WPStepperClampLeft_stl() {
  stl("WPStepperClampLeft");
  WPStepperClamp();
}

module WPStepperClampRight_stl() {
  stl("WPStepperClampRight");
  mirror([1,0,0]) WPStepperClamp();
}

//! TBD
module WPStepperClampRight_assembly() {
  pose([25,30,20], [80,0,240])
  assembly("WPStepperClampRight") {
    translate([winW,0,0]) {
      //Printed part
      transrot([0,0,0],[0,0,0]) WPStepperClampRight_stl();
      
      //Clamp screws
      explode([0,0,-20]) transrot([-45,-16,-24],[90,30,0]) nut(M5_nut);  
      transrot([-45,-22-8,-24],[90,0,0]) {
        explode(45)  screw(M5_hex_screw, 20);
        explode(55)  screwClampGrip(type=M5_hex_screw); 
        explode(-10) screwClampShoe(type=M5_hex_screw,length=20);
      }       
      transrot([-20,-45,-24],[0,90,0]) explode([20,0,0]) nut(M5_nut);  
      transrot([-22-8,-45,-24],[0,270,0]) {
        explode(20)   screw(M5_hex_screw, 20);
        explode(30)   screwClampGrip(type=M5_hex_screw); 
        explode(-10) screwClampShoe(type=M5_hex_screw,length=20);
      }
       
      //Stepper    
      explode([0,0,20]) transrot([50,50,0],[180,0,270]) WPStepperShaftRight_assembly();
    }
  }
}

//! TBD
module WPStepperClampLeft_assembly() {
  pose([25,30,20], [80,0,180])
  assembly("WPStepperClampLeft") {
    translate([0,0,0]) {
      //Printed part
      transrot([0,0,0],[0,0,0])   WPStepperClampLeft_stl();
    
      //Clamp screws
      explode([0,0,-20]) transrot([45,-16,-24],[90,30,0]) nut(M5_nut);  
      transrot([45,-22-8,-24],[90,0,0]) {
        explode(45)  screw(M5_hex_screw, 20);
        explode(55)  screwClampGrip(type=M5_hex_screw); 
        explode(-10) screwClampShoe(type=M5_hex_screw,length=20);
      }       
      transrot([16,-45,-24],[0,90,0]) explode([20,0,0]) nut(M5_nut);  
      transrot([22+8,-45,-24],[0,90,0]) {
        explode(20)   screw(M5_hex_screw, 20);
        explode(30)   screwClampGrip(type=M5_hex_screw); 
        explode(-10) screwClampShoe(type=M5_hex_screw,length=20);
      }
       
      //Stepper    
      explode([0,0,20]) transrot([-50,50,0],[180,0,270]) WPStepperShaftLeft_assembly();
    }
  }
}

if($preview) {
//   $explode = 1;
   WPStepperClampRight_assembly();
   *WPStepperClampLeft_assembly();
   
  
    
   translate([0,0,-44]) windowFrame(glassHeight=winH,
                                    glassWidth=winW); 
}

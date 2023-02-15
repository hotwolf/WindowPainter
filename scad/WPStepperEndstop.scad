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

use <./WPBeadedChain.scad>

use <../printed/beadedChainMount.scad>

//Set view
//$vpt = [25,30,20];
//$vpr = [80,0,340];

//Beaded chain parts
//==================
//Left end bead
module WPStepperEndstopLeftEndBead(offsX=-weightOffsX,
                                   offsY=-weightOffsY) {
  bead(x=offsX-10,
       y=offsY+4*bcBeadS);                    
}
*WPStepperEndstopLeftEndBead(0,0);

//Left end bead
module WPStepperEndstopRightEndBead(offsX=winW+weightOffsX,
                                    offsY=-weightOffsY) {
  bead(x=offsX+10,
       y=offsY+4*bcBeadS);                    
}
*WPStepperEndstopRightEndBead(0,0);

//SS-GL5 end switch with lever
module ss_gl5() {
    
  translate([4.8-14.5,-5.1-1.5,0]) {
    microswitch(medium_microswitch); 
    microswitch_hole_positions(medium_microswitch) {
      transrot([0,0,-3.2],[0,180,0]) screw_and_washer(M3_dome_screw, 12); 
      transrot([0,0, 5],[0,0,30]) nut(M3_nut);
    }
  }   
  color("silver") {
    transrot([-17,-1.5,-1.8],[0,0,18]) cube([17,0.5,3.6]);
    translate([-17,-3,-1.8]) cube([0.5,1.8,3.6]);
  }   
}
*ss_gl5();

//Endstop
module WPEndstop() {
    
  difference() {
    union() {  
      //Bumper plate
      hull() {
        for(x=[-5,5]) {
          transrot([x,0,0],[0,0,180])
          union() {
            rotate([90,0,0]) rotate_extrude() union() {
            translate([0,1,0])  square([12,3]);
            translate([0,0,0])  square([11,4]);
            translate([11,1,0]) circle(r=1);
          }
        }
       }
     }
     //Bead holder
     hull() {
       translate([-10,bcBeadS*3,0]) sphere(d=bcBeadD*2);
       transrot([-10,bcBeadS*3,0],[90,0,0]) cylinder(h=bcBeadS*3,d=bcBeadD*2);
       transrot([-7.4,9.1,-7],[0,0,90]) rotate_extrude(angle=90) square([2.3,2]);
       transrot([-9.7,4,-7],[0,0,0]) cube([2.3,5.1,2]);
     }
     *translate([-12,4,-10]) cube([4,15,12]);
     
     //Switch 
     transrot([0,-1.5,0],[0,90,180])
     translate([4.8-14.5,-5.1-1.5,0])
     hull() {
       microswitch_hole_positions(medium_microswitch) {
         transrot([0,0,3.4],[0,0,30])  cylinder(h=4,d=7.4);    
         transrot([16,0,3.4],[0,0,30]) cylinder(h=4,d=7.4);   
       }
     }
    
     //Stand
     hull() {         
       transrot([-7.4,9.1,-10],[0,0,90]) rotate_extrude(angle=90) square([2.3,3]);
       *transrot([-9.7,4,-10],[0,0,0]) cube([2.3,5.1,3]);         
       translate([-9.7,4,-10])  cube([21.3,1,3]);
       translate([0.1,14,-10]) cylinder(h=3,d=10);
       translate([6.6,7,-10])   cylinder(h=3,d=10);
     }
     
   }
   union() {
    //Guide hole  
    transrot([10,-0.5,0],[270,0,0]) rotate_extrude() {
      difference() {
        width=6;    
        translate([0,0,0])   square([width/2+2.5,6]);
        translate([2.5+width/2,2.5,0]) circle(r=2.5);
      }
    }
    transrot([10,bcBeadS,0],[0,0,90])
    bcCutoutLine(bcBeadD     = bcBeadD,     //Bead diameter (+tolerance)
                  bcBeadS    = bcBeadS,     //Bead spacing (distance between center of beads)
                  bcCordD    = bcCordD,     //Cord diameter
                  bcOpeningD = bcBeadD,     //Hole opening
                  bcOpeningH = 20,          //Hole height
                  bcC        = 2);          //Bead count
    
    //Switch slot   
    transrot([-3.35,-3,-0.3],[0,0,0]) cube([6.7,20,20]);
       
    //Chain mount slot
    transrot([-10,0,0],[0,0,270])
    bcCutoutLine(bcBeadD     = bcBeadD,      //Bead diameter (+tolerance)
                  bcBeadS    = bcBeadS,     //Bead spacing (distance between center of beads)
                  bcCordD    = bcCordD,     //Cord diameter
                  bcOpeningD = bcBeadD-0.4, //Hole opening
                  bcOpeningH = 20,          //Hole height
                  bcC        = 5);          //Bead count    
    transrot([-14.4,4,1.6],[0,0,0]) cube([7,20,10]);
    transrot([-14.4,11.4,1.6],[0,0,0]) cube([10,6,10]);

     //Nut traps (switch)
     transrot([0,-1.5,0],[0,90,180])
     translate([4.8-14.5,-5.1-1.5,0]) 
     microswitch_hole_positions(medium_microswitch) {
       transrot([0,0,5],[0,0,30]) 
       cylinder(h=4,r=nut_trap_radius(M3_nut,horizontal=true)+0.2,$fn=6); 
       transrot([0,0,-6],[0,0,30]) 
       cylinder(h=12,r=screw_clearance_radius(M3_dome_screw)); 
     }
     
     //Nut traps (stand)
     transrot([0.1,15,-9],[0,0,0]) 
     cylinder(h=3,r=nut_trap_radius(M3_nut,horizontal=true)+0.2,$fn=6); 
     transrot([0.1,15,-16],[0,0,0]) 
     cylinder(h=12,r=screw_clearance_radius(M3_dome_screw)); 
 
     transrot([6.4,8,-9],[0,0,0]) 
     cylinder(h=3,r=nut_trap_radius(M3_nut,horizontal=true)+0.2,$fn=6); 
     transrot([6.4,8,-16],[0,0,0]) 
     cylinder(h=12,r=screw_clearance_radius(M3_dome_screw)); 
     
    //Bottom
    transrot([-20,-3,-20],[0,0,0]) cube([40,30,10]);      
   }
 }
 
}
 
module WPStepperEndstopLeft_stl() {
  stl("WPStepperEndstopLeft");
  color(pp1_colour)
  WPEndstop();

}
*WPStepperEndstopLeft_stl();

module WPStepperEndstopRight_stl() {
  stl("WPStepperEndstopRight");
  color(pp1_colour)
  mirror([1,0,0])
  WPEndstop();
}
*WPStepperEndstopRight_stl();

//! TBD
module WPStepperEndstopLeft_assembly() {
  pose([25,30,20], [80,0,180])
  assembly("WPStepperEndstopLeft") {
    translate([0,0,0]) {
        
      WPStepperEndstopLeft_stl();
      transrot([0,-1.5,0],[0,90,180]) ss_gl5();
        
    }
  }
}


//! TBD
module WPStepperEndstopRight_assembly() {
  pose([25,30,20], [80,0,180])
  assembly("WPStepperEndstopLeft") {
    translate([0,0,0]) {
        
      WPStepperEndstopRight_stl();
      mirror([1,0,0])
      transrot([0,-1.5,0],[0,90,180]) ss_gl5();
        
    }
  }
}

//Screws
module WPStepperEndstopScrewsLeft() {

  //Mount screws
  transrot([0.1,15,-11],[180,0,0]) screw_and_washer(M3_dome_screw,8);
  transrot([0.1,15,-9],[0,0,0]) nut(M3_nut);
      
  transrot([6.4,8,-11],[180,0,0]) screw_and_washer(M3_dome_screw,8);
  transrot([6.4,8,-9],[0,0,0])nut(M3_nut);
}

//Screws
module WPStepperEndstopScrewsRight() {

  //Mount screws
  mirror([1,0,0]) WPStepperEndstopScrewsLeft();
}

if($preview||true) {
//   $explode = 1;
 WPStepperEndstopRight_assembly();
 WPStepperEndstopScrewsRight() ;
 *WPStepperEndstopLeft_assembly();
 *WPStepperEndstopScrewsLeft() ;
    
   *translate([0,0,-44]) windowFrame(glassHeight=winH,
                                    glassWidth=winW); 
}

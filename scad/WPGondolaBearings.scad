//###############################################################################
//# WindowPainter - Gondola Pen Holder                                          #
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
//#   The pen clamp and cain mount                                              #
//#                                                                             #
//###############################################################################
//# Version History:                                                            #
//#   January 26, 2023                                                          #
//#      - Initial release                                                      #
//#                                                                             #
//###############################################################################

include <./WPConfig.scad>

use <./WPBeadedChain.scad>

use <../printed/beadedChainMount.scad>

//Set view
//$vpt = [1,0,5];
//$vpr = [0,250,320];

//Beaded chain parts
//==================
//Left end bead
module WPGondolaBearingLeftStartBead(offsX=gondolaX,
                                     offsY=gondolaY,
                                     offsA=90+stepperLeftA) {
  transrot([offsX,offsY,0],[0,0,offsA])
  bead(x=0,
       y=44-3*bcBeadS);                    
}
*WPGondolaBearingLeftStartBead(0,0);

//Left end bead
module WPGondolaBearingRightStartBead(offsX=gondolaX,
                                      offsY=gondolaY,
                                      offsA=-stepperRightA) {
  transrot([offsX,offsY,0],[0,0,offsA])
  bead(x=0,
       y=44-3*bcBeadS);                    
}
*WPGondolaBearingRightStartBead(0,0);

//Pen clamp settings
penClampL1 = 10; //Depth of the clamp
penClampL2 =  0; //Depth of the pen holder extension
penClampA1 =  5; //Spring tension (spring offset angle)
penClampA2 = 60; //Hinge position at the handle

//Pen clamp D20
module WPGondolaPenClampD20Part1_stl() {
  stl("WPGondolaPenClampD20Part1");
  penClamp1(d =20,
            l1=penClampL1,
            l2=penClampL2);
}

module WPGondolaPenClampD20Part2_stl() {
  stl("WPGondolaPenClampD20Part2");
  penClamp2(d=20,
            l=penClampL1);
}

module WPGondolaPenClampD20Part3_stl() {
  stl("WPGondolaPenClampD20Part3");
  penClamp3(d=20,
            l=penClampL1,
            a=penClampA2);
}

module WPGondolaPenClampD20Part4_stl() {
  stl("WPGondolaPenClampD20Part4");
  penClamp4(d =20,
            l =penClampL1,
            a1=penClampA1, 
            a2=penClampA2);
}

//! TBD
module WPGondolaPenClampD20_assembly() {
  pose([1,0,5], [0,250,320])
  assembly("WPGondolaPenClampD20") {

    explode([0,0,0]) WPGondolaPenClampD20Part1_stl();
    explode([0,0,-5]) WPGondolaPenClampD20Part2_stl();
    explode([0,0,-35]) WPGondolaPenClampD20Part3_stl();
    explode([0,0,25]) WPGondolaPenClampD20Part4_stl();
   
  }  
}
//Pen clamp D30
module WPGondolaPenClampD30Part1_stl() {
  stl("WPGondolaPenClampD30Part1");
  penClamp1(d =30,
            l1=penClampL1,
            l2=penClampL2);
}

module WPGondolaPenClampD30Part2_stl() {
  stl("WPGondolaPenClampD30Part2");
  penClamp2(d=30,
            l=penClampL1);
}

module WPGondolaPenClampD30Part3_stl() {
  stl("WPGondolaPenClampD30Part3");
  penClamp3(d=30,
            l=penClampL1,
            a=penClampA2);
}

module WPGondolaPenClampD30Part4_stl() {
  stl("WPGondolaPenClampD30Part4");
  penClamp4(d =30,
            l =penClampL1,
            a1=penClampA1, 
            a2=penClampA2);
}

//! TBD
module WPGondolaPenClampD30_assembly() {
  pose([1,0,5], [0,250,320])
  assembly("WPGondolaPenClampD20") {

    explode([0,0,0]) WPGondolaPenClampD30Part1_stl();
    explode([0,0,-5]) WPGondolaPenClampD30Part2_stl();
    explode([0,0,-35]) WPGondolaPenClampD30Part3_stl();
    explode([0,0,25]) WPGondolaPenClampD30Part4_stl();
   
  }  
}

module cylinderBearingInnerConnector(a=0,l=20) {
  rotate([0,0,a]) {
      
    linear_extrude(height=10,twist=-90/PI)
    difference() {
      circle(d=40);
      union() {
        rotate([0,0,270-(45/PI)]) translate([-25,0,0]) square([50,30]); 
        rotate([0,0,90-(135/PI)]) translate([-25,0,0]) square([50,30]); 
        rotate([0,0,-(90/PI)]) translate([-10,-16,0]) square([20,40]);
        *circle(d=36);          
      }
  }

    transrot([0,0,10],[0,0,0])
    linear_extrude(height=l)
    difference() {
      circle(d=40);
      union() {
        rotate([0,0,270+(45/PI)]) translate([-25,0,0]) square([50,30]); 
        rotate([0,0,90-(45/PI)]) translate([-25,0,0]) square([50,30]); 
        rotate([0,0,0]) translate([-10,-16,0]) square([20,40]);
        *circle(d=36);          
      }
    }
  } 
}

module WPGondolaBearing_stl(a=0) {
  stl("WPGondolaBearing");
  color(pp2_colour)  
  translate([0,0,-5]) {
    
    //Chain mount
    rotate([0,0,a])
    difference() {
      union() {
        translate([0,44,0]) cylinder(h=5,d=bcBeadD+2);
        translate([0,44,5]) sphere(d=bcBeadD+2);
        translate([-(bcBeadD+2)/2,29,0])  cube([bcBeadD+2,15,5]);
        transrot([0,29,5],[270,0,0]) cylinder(h=15,d=bcBeadD+2);
     
      }
      union() {
        transrot([0,44,5],[0,0,90]) 
        bcCutoutLine(bcBeadD    = bcBeadD,   //Bead diameter (+tolerance)
                     bcBeadS    = bcBeadS,     //Bead spacing (distance between center of beads)
                     bcCordD    = bcCordD,     //Cord diameter
                     bcOpeningD = bcBeadD-0.4,   //Hole opening
                     bcOpeningH = 20,    //Hole height
                     bcC        = 4,     //Bead count
                     tiltFirst  = true); //Tilt first cutout          
        translate([0,0,4.8]) cylinder(h=10,r=30.2);   
        transrot([-bcBeadD,44-bcBeadS/2,6+bcBeadD/2],[0,90,0]) cylinder(h=2*bcBeadD,d=bcBeadD);
        translate([-bcBeadD,32-bcBeadS/2,6]) cube([2*bcBeadD,12,10]);
      }
    }
      
    //Bearing
    cylinderBearing(height                  = 4.8,  // Height of the bearing
                    spacer                  = 0.2,  // Width of a spacer at the inner ring
	                inner_radius            = 20.0, // Inner ring radius. Half of the diameter
	                outer_radius            = 30.0, // Outer ring radius. Half of the diameter
	                edge_radius             = 0.5,  // Radii of the inner and outer ring touching the housing and axis
	                ball_radius             = 3,    // Dimension of the rolling element
	                ball_edge_radius        = 0.3,  // Edge Radii of the rolling element
	                space_ball_rings        = 0.2,  // Space between the rolling element and each ring
	                min_space_between_balls = 0.25, // Minimum space between the rolling elements. Effects the number of rolling elements
	                ball_height_space       = 0.0,  // Clearance between height of the rings and the height rolling elements
	                guide_size_ratio        = 0.5,  // Ratio of height of the guidance elevation
	                ball_guide_height       = 0.8); // Elevation of the guidance element
    
     
    cylinderBearingInnerConnector(a=0,l=16);
    cylinderBearingInnerConnector(a=90,l=8);
    cylinderBearingInnerConnector(a=-90,l=8);
  }
}

module WPGondolaPenBearingRight_stl() {
  stl("WPGondolaPenBearingRight");
  
    cylinderBearing(height                  = 4.8,  // Height of the bearing
                    spacer                  = 0.2,  // Width of a spacer at the inner ring
	                inner_radius            = 20.0, // Inner ring radius. Half of the diameter
	                outer_radius            = 30.0, // Outer ring radius. Half of the diameter
	                edge_radius             = 0.5,  // Radii of the inner and outer ring touching the housing and axis
	                ball_radius             = 3,    // Dimension of the rolling element
	                ball_edge_radius        = 0.3,  // Edge Radii of the rolling element
	                space_ball_rings        = 0.2,  // Space between the rolling element and each ring
	                min_space_between_balls = 0.25, // Minimum space between the rolling elements. Effects the number of rolling elements
	                ball_height_space       = 0.0,  // Clearance between height of the rings and the height rolling elements
	                guide_size_ratio        = 0.5,  // Ratio of height of the guidance elevation
	                ball_guide_height       = 0.8); // Elevation of the guidance element


    
    
}

//! TBD
module WPGondolaBearings_assembly() {
  pose([1,0,5], [0,250,320])
  assembly("WPGondolaPenBearings") {

    transrot([0,0,0],[0,0,0])   WPGondolaBearing_stl(90+stepperLeftA);
    transrot([0,0,0],[0,180,0]) WPGondolaBearing_stl(stepperRightA);

    *transrot([0,0,10],[0,0,0])  WPGondolaPenClampD30_assembly();
    *transrot([0,0,-10],[0,180,0])  WPGondolaPenClampD30_assembly();


  }  
}






if($preview) {
//   $explode = 1;
   *WPGondolaPenClampD30_assembly();
    
    WPGondolaBearings_assembly();
    
      *translate([-winW/2,winH/2,-44]) windowFrame(glassHeight=winH,
                                                  glassWidth=winW); 
 
 }

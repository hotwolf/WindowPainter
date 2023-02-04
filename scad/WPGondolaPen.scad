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
//#   The pen clamp                                                             #
//#                                                                             #
//###############################################################################
//# Version History:                                                            #
//#   January 26, 2023                                                          #
//#      - Initial release                                                      #
//#                                                                             #
//###############################################################################

include <./WPConfig.scad>

//Set view
//$vpt = [1,0,5];
//$vpr = [0,250,320];

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

module WPGondolaPenBearingLeft_stl() {
  stl("WPGondolaPenBearingLeft");
  
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
module WPGondolaPenBearings_assembly() {
  pose([1,0,5], [0,250,320])
  assembly("WPGondolaPenBearings") {

    transrot([0,0,-5],[0,0,0])   WPGondolaPenBearingLeft_stl();
    transrot([0,0,5],[0,180,0]) WPGondolaPenBearingRight_stl();

    transrot([0,0,10],[0,0,0])  WPGondolaPenClampD30_assembly();
    transrot([0,0,-10],[0,180,0])  WPGondolaPenClampD30_assembly();


  }  
}






if($preview) {
//   $explode = 1;
   *WPGondolaPenClampD30_assembly();
    
    WPGondolaPenBearings_assembly();
    
      *translate([-winW/2,winH/2,-44]) windowFrame(glassHeight=winH,
                                                  glassWidth=winW); 
 
 }

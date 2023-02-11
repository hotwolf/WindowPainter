//###############################################################################
//# WindowPainter - Window Frame                                                #
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
//#   Model of a window frame                                                   #
//#                                                                             #
//###############################################################################
//# Version History:                                                            #
//#   January 24, 2023                                                          #
//#      - Initial release                                                      #
//#                                                                             #
//###############################################################################

include <NopSCADlib/lib.scad>

module windowFrame(xOffset=0,
                   yOffset=0,
                   zOffset=0,
                   glassHeight=800,
                   glassWidth=1000,
                   frameWidth=85,
                   frameInnerDepth=30,
                   frameOuterDepth=15,
                   opens="right") {

  //Constants
  glassDepth = 10;
  clearance  = 80; 
                       
  translate([xOffset,yOffset,zOffset]) {

    //Glass pane
    color("LightCyan",1) translate([0,-glassHeight,-glassDepth]) cube([glassWidth,glassHeight,glassDepth]);

    //Seal
    color("Gray") union() {  
      translate([0         ,0           ,0]) rotate([90,0,0])   fillet(r=10,h=glassHeight); 
      translate([glassWidth,-glassHeight,0]) rotate([90,0,180]) fillet(r=10,h=glassHeight); 
      translate([glassWidth,0           ,0]) rotate([90,0,270]) fillet(r=10,h=glassWidth); 
      translate([0         ,-glassHeight,0]) rotate([90,0,90])  fillet(r=10,h=glassWidth); 
    }
    
    //Frame
    difference() {
      union() {
        color("WhiteSmoke")   
        translate([-frameWidth,-glassHeight-frameWidth,0]) 
          cube([glassWidth+2*frameWidth,
                glassHeight+2*frameWidth,
                frameInnerDepth]);
        color("Gainsboro") 
        translate([-frameWidth-clearance,-glassHeight-frameWidth-clearance,-glassDepth]) 
          cube([glassWidth+2*frameWidth+2*clearance,
                glassHeight+2*frameWidth+2*clearance,
                glassDepth+frameInnerDepth-frameOuterDepth]);
      }
      translate([0,-glassHeight,-glassDepth-10]) cube([glassWidth,glassHeight,frameInnerDepth+glassDepth+20]);
    }

    //Hinges
    color("White") translate ([opens=="right"?0:20+glassWidth+2*frameWidth,0,0]) union() {
      translate([-frameWidth-10,frameWidth,frameInnerDepth-10]) rotate([90,0,0]) cylinder(h=70,d=20);
      translate([-frameWidth-10,70-glassHeight-frameWidth,frameInnerDepth-10]) rotate([90,0,0]) cylinder(h=70,d=20);
    }
    
    //Handle
    color("Silver") translate ([opens=="right"?0:-100-glassWidth,0,0]) union() {
      translate([glassWidth+35,-30-glassHeight/2,frameInnerDepth]) cube([30,60,10]);
      translate([glassWidth+50,-glassHeight/2,frameInnerDepth]) cylinder(h=55,d=20);
      translate([glassWidth+50,-glassHeight/2,55+frameInnerDepth]) sphere(d=20);
      translate([glassWidth+50,-glassHeight/2,55+frameInnerDepth]) rotate([90,0,0]) cylinder(h=120,d=20);
    }
  }
}

if ($preview) {
  windowFrame();
}
//###############################################################################
//# WindowPainter - Beaded Chain Mount                                          #
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
//#   Configurable beaded chain mount                                           #
//#                                                                             #
//###############################################################################
//# Version History:                                                            #
//#   February 3, 2023                                                          #
//#      - Initial release                                                      #
//#                                                                             #
//###############################################################################

include <NopSCADlib/lib.scad>

module beadedChainMount(bcBeadD    = 3.2,   //Bead diameter (+tolerance)
                        bcBeadS    = 4,     //Bead spacing (distance between center of beads)
                        bcCordD    = 1,     //Cord diameter
                        bcOpeningD = 2.8,   //Cord diameter
                        lengthC    = 4,     //Number of beads to trap
                        flip       = false) //Change the side of the excess openinh
{			 
  mirror([0,flip?1:0,0])
  difference() {
    union() {
      hull() {
        translate([-0.5,0,0])             sphere(d=bcBeadD+2);    
        translate([-lengthC*bcBeadS,0,0]) sphere(d=bcBeadD+2);    
        translate([-0.5,0,-bcBeadS])             sphere(d=bcBeadD+2);    
        translate([-lengthC*bcBeadS,0,-bcBeadS]) sphere(d=bcBeadD+2);    
      }
        
        
    }
    union() {
      //Bead holes 
      rotate([0,-45,0]) cylinder(h=20,d=bcOpeningD);                    
      sphere(d=bcBeadD);  
      for (i=[bcBeadS:bcBeadS:(lengthC-1)*bcBeadS]) {
        translate([-i,0,0]) {
        cylinder(h=20,d=bcOpeningD);                    
        sphere(d=bcBeadD);  
      } 
    }

    //Cord slot
    translate([bcBeadS,0,0]) rotate([0,270,0]) cylinder(h=lengthC*bcBeadS,d=bcCordD);
    translate([-(lengthC-1)*bcBeadS,-bcCordD/2,0]) cube([lengthC*bcBeadS,bcCordD,bcBeadS]);

    //Top plane
    translate([-(lengthC+1)*bcBeadS,-bcBeadD,bcBeadD/2]) cube([(lengthC+2)*bcBeadS,2*bcBeadS,bcBeadS]);

    //Bottom plane
    translate([-(lengthC+1)*bcBeadS,-bcBeadD,-0.5-2*bcBeadS-bcBeadD/2]) cube([(lengthC+2)*bcBeadS,2*bcBeadS,2*bcBeadS]);
    
    //Opening foe excess chain
    translate([-(lengthC-1)*bcBeadS,bcBeadS,0]) rotate([0,0,180]) rotate_extrude(angle=90) {
      hull() {  
        translate([bcBeadS,0,0]) circle(d=bcBeadD);
        translate([bcBeadS,bcBeadS,0]) circle(d=bcBeadD);
      }
    }
    translate([-(lengthC-1)*bcBeadS,0,0]) cylinder(h=bcBeadS,d=bcBeadD);
    
    //Debug
    *translate([-30,0,-5]) cube([40,8,20]);
    }
  }   
}

if ($preview) {
    
  //Beaded chain mount
  beadedChainMount(flip=false);
    
}
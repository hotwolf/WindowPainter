//###############################################################################
//# WindowPainter - Beaded Chain                                                #
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
//#   Fixture to align the beaded chain to the center of the stepper shaft      #
//#                                                                             #
//###############################################################################
//# Version History:                                                            #
//#   January 20, 2023                                                          #
//#      - Initial release                                                      #
//#                                                                             #
//###############################################################################

include <WPConfig.scad>

use <./WPWeight.scad>
use <./WPStepperShaft.scad>

//Set view
//$vpt = [8,10,20];
//$vpr = [72,0,75];

//Single bead
module bead(x=0,y=0) {
  color(bcBeadC)
  translate([x,y,0]) sphere(d=bcBeadD);
}
*bead();

//Arc
module beadArc(x=0,y=0,r=undef,d=20,a1=0,a2=360) {
  r = r==undef ? d/2 : r;
  color(bcBeadC)  
  transrot([x,y,0],[0,0,a1+90])
  rotate_extrude(angle=a2-a1) 
  translate([r,0,0])  
  circle(d=bcBeadD);
}
*beadArc(a1=30,a2=120,x=20);

//Line
module beadLine(x1=0,y1=0,x2=0,y2=0) {
  color(bcBeadC)  
  hull() {
    bead(x=x1,y=y1);
    bead(x=x2,y=y2);
  }
}

//Left chain
module WPBeadedChainLeft() {
  vitamin("WPBeadedChainLeft: Beaded chain (diameter=3mm, spacing=4mm)");
  color(bcBeadC)    
  union() {
    //Fastener to weight
    hull() {  
      bead(x=-weightOffsX-10,
           y=weightOffsY);
      WPWeightLeftStartBead();
    }  
    //Weight
    WPWeightLeftChain();
    //Weight to pulley  
    hull() {  
      WPWeightLeftEndBead();
      WPStepperShaftLeftStartBead();
    }
    //Pulley to aligner 
    WPStepperShaftLeftChain();   
    //Aligner to gondola
    hull() {  
      WPStepperShaftLeftEndBead();
      bead(x=gondolaX,
           y=gondolaY);
    } 
  }    
}
 
//Right chain
module WPBeadedChainRight() {
  vitamin("WPBeadedChainRight: Beaded chain (diameter=3mm, spacing=4mm)");
  color(bcBeadC)    
  union() {
    //Fastener to weight
    hull() {  
      bead(x=winW+weightOffsX+10,
           y=weightOffsY);
      WPWeightRightStartBead();
    }  
    //Weight
    WPWeightRightChain();
    //Weight to pulley  
    hull() {  
      WPWeightRightEndBead();
      WPStepperShaftRightStartBead();
    }
    //Pulley to aligner 
    WPStepperShaftRightChain();   
    //Aligner to gondola
    hull() {  
      WPStepperShaftRightEndBead();
      bead(x=gondolaX,
           y=gondolaY);
    } 
  }    
}
 


if($preview) {   
   $explode = 1;
   WPBeadedChainLeft();
   WPBeadedChainRight();
}

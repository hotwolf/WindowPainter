//###############################################################################
//# WindowPainter - Stepper Motor Shaft Assembly                                #
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
//#   Stepper motor shaft assembly of the WindowPainter.                        #
//#                                                                             #
//###############################################################################
//# Version History:                                                            #
//#   January 21, 2023                                                          #
//#      - Initial release                                                      #
//#                                                                             #
//###############################################################################

include <./WPConfig.scad>

use <./WPPulley.scad>
use <./WPAligner.scad>
use <./WPStepperMount.scad>
use <./WPBeadedChain.scad>

//Set view
//$vpt = [25,30,20];
//$vpr = [80,0,340];

//Beaded chain parts
//==================
//Left start bead
module WPStepperShaftLeftStartBead(offsX=-stepperOffsX,
                                   offsY=stepperOffsY) {
  bead(x=offsX-64/PI,
       y=offsY);                    
}
*WPStepperShaftLeftStartBead(0,0);

//Left end bead
module WPStepperShaftLeftEndBead(offsX=-stepperOffsX,
                                 offsY=stepperOffsY,
                                 offsA=stepperLeftA) { 
  transrot([offsX,offsY,0],[0,0,offsA-270])
  bead(x=0,
       y=-37);                    
}
WPStepperShaftLeftEndBead(0,0);

//Left chain segment
module WPStepperShaftLeftChain(offsX=-stepperOffsX,
                               offsY=stepperOffsY,
                               offsA=stepperLeftA) {
  //Geometry
  r1 = 64/PI; //~20.73
  r2 = 10;
  d  = 37;                                 
  t  = sqrt((d^2+r2^2)-((r1+r2)^2));
  a  = acos(t/d);

  color(bcBeadC)
  transrot([offsX,offsY,0],[0,0,offsA]) {
    beadArc(r=r1,a1=90-offsA,a2=-90+a);
    beadArc(x=37,y=10,r=r2,a1=90+a,a2=180);
    hull() {
      transrot([37,10,0],[0,0,90+a]) bead(y=10);
      transrot([0,0,0],[0,0,-90+a]) bead(y=r1);
    }
  }
}
*WPStepperShaftLeftChain(0,0);

//Right start bead
module WPStepperShaftRightStartBead(offsX=winW+stepperOffsX,
                                    offsY=stepperOffsY) {
  bead(x=offsX+64/PI,
       y=offsY);                    
}
*WPStepperShaftRightStartBead(0,0);

//Right end bead
module WPStepperShaftRightEndBead(offsX=winW+stepperOffsX,
                                  offsY=stepperOffsY,
                                  offsA=stepperRightA) {
  transrot([offsX,offsY,0],[0,0,-offsA])
  bead(x=0,
       y=-37);                    
}
*WPStepperShaftRightEndBead(0,0);

//Right chain segment
module WPStepperShaftRightChain(offsX=winW+stepperOffsX,
                                offsY=stepperOffsY,
                                offsA=stepperRightA) {
  //Geometry
  r1 = 64/PI; //~20.73
  r2 = 10;
  d  = 37;                                 
  t  = sqrt((d^2+r2^2)-((r1+r2)^2));
  a  = acos(t/d);

  color(bcBeadC)
  transrot([offsX,offsY,0],[0,0,-offsA]) {
    beadArc(r=r1,a1=-90+offsA,a2=180-a);
    beadArc(x=-10,y=-37,r=r2,a1=-a,a2=-90);
    hull() {
      transrot([-10,-37,0],[0,0,-a]) bead(y=10);
      transrot([0,0,0],[0,0,180-a]) bead(y=r1);
    }
  }
}
*WPStepperShaftRightChain(0,0);


//! TBD
module WPStepperShaftRight_assembly() {
  pose([25,30,20], [80,0,240])
  assembly("WPStepperShaftRight") {

    transrot([0,0,0],  [0,0,0]) explode(50)             WPPulley_assembly();
    transrot([0,0,0],  [0,0,stepperRightA]) explode(30) WPAlignerRight_assembly();
    transrot([0,0,0],  [0,0,90])                        WPStepperMountRight_assembly();
              
  }
}

//! TBD
module WPStepperShaftLeft_assembly() {
    pose([25,30,20], [80,0,180])
    assembly("WPStepperShaftLeft") {

      transrot([0,0,0],  [0,0,0])                explode(50) WPPulley_assembly();
      transrot([0,0,0],  [0,0,270-stepperLeftA]) explode(30) WPAlignerLeft_assembly();
      transrot([0,0,0],  [0,0,0])                WPStepperMountLeft_assembly();    
        
    }
}

if($preview) {
//  $explode = 1;
   *rotate([0,180,90]) WPStepperShaftRight_assembly();
   rotate([0,180,90]) WPStepperShaftLeft_assembly();
}

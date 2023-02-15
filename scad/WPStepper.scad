//###############################################################################
//# WindowPainter - Stepper Motor Assembly                                       #
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
//#   Stepper motor clamp assembly of the WindowPainter.                        #
//#                                                                             #
//###############################################################################
//# Version History:                                                            #
//#   February 12, 2023                                                         #
//#      - Initial release                                                      #
//#                                                                             #
//###############################################################################

include <./WPConfig.scad>

use <./WPStepperClamp.scad>
use <./WPStepperMount.scad>
use <./WPStepperShaft.scad>
use <./WPStepperEndstop.scad>

//Set view
//$vpt = [25,30,20];
//$vpr = [80,0,340];


//! TBD
module WPStepperRight_assembly() {
  pose([25,30,20], [80,0,240])
  assembly("WPStepperClampRight") {
    translate([winW,0,0]) {
   
      //Clamp
      WPStepperClampRight_assembly();

      //Stepper
      explode([0,0,20]) transrot([stepperOffsX,stepperOffsY,0],[180,0,270]) WPStepperShaftRight_assembly();
      transrot([stepperOffsX,stepperOffsY,0],[180,0,180]) WPStepperMountScrews();
     
      //EndStop  
      translate([weightOffsX,-weightOffsY,0]) WPStepperEndstopRight_assembly();
      translate([weightOffsX,-weightOffsY,0]) WPStepperEndstopScrewsRight();
    }   
  }
}

//! TBD
module WPStepperLeft_assembly() {
  pose([25,30,20], [80,0,180])
  assembly("WPStepperClampLeft") {
    translate([0,0,0]) {

      //Clamp
      WPStepperClampLeft_assembly();
      
      //Stepper
      explode([0,0,20]) transrot([-stepperOffsX,stepperOffsY,0],[180,0,270]) WPStepperShaftLeft_assembly();
      transrot([-stepperOffsX,stepperOffsY,0],[180,0,270]) WPStepperMountScrews();
      
      //EndStop  
      translate([-weightOffsX,-weightOffsY,0]) WPStepperEndstopLeft_assembly();
      translate([weightOffsX,-weightOffsY,0]) WPStepperEndstopScrewsLeft();
   }   
  }
}

if($preview) {
   $explode = 0;
   WPStepperRight_assembly();
   *WPStepperLeft_assembly();
   
   *translate([0,0,-44]) windowFrame(glassHeight=winH,
                                    glassWidth=winW); 
}

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

//Set view
$vpt = [25,30,20];
$vpr = [80,0,340];

//! TBD
module WPStepperShaftRight_assembly() {
  pose([25,30,20], [80,0,240])
  assembly("WPStepperShaftRight") {

    transrot([0,0,0],  [0,0,0]) explode(50) WPPulley_assembly();
    transrot([0,0,0],  [0,0,0]) explode(30) WPAlignerRight_assembly();
    transrot([0,0,0],  [0,0,0]) WPStepperMountRight_assembly();
              
  }
}

//! TBD
module WPStepperShaftLeft_assembly() {
    pose([25,30,20], [80,0,180])
    assembly("WPStepperShaftLeft") {
 
      transrot([0,0,0],  [0,0,0]) explode(50) WPPulley_assembly();
      transrot([0,0,0],  [0,0,0]) explode(30) WPAlignerLeft_assembly();
      transrot([0,0,0],  [0,0,0]) WPStepperMountLeft_assembly();    
        
    }
}

if($preview) {
//  $explode = 1;
   WPStepperShaftRight_assembly();
   *WPStepperShaftLeft_assembly();
}

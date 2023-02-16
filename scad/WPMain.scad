//###############################################################################
//# WindowPainter - Main Assembly                                               #
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
//#   Main assembly of the WindowPainter.                                       #
//#                                                                             #
//###############################################################################
//# Version History:                                                            #
//#   January 20, 2023                                                          #
//#      - Initial release                                                      #
//#                                                                             #
//###############################################################################
//! WindowPainter is a project to recycle old 3D printers.
//! It's a vertical plotter, to be be mounted on a window frame.
//! 
//! This project is still work in progress. Here is my todo list:
//! 
//! | Status | Task  |
//! |:---|:---|
//! | &#9989; | Setup the project |
//! | &#9989; | Start the design |
//! | &#9989; | Run the NopSCADlib flow |
//! | &#10060; | Complete an initial version of the design |
//! | &#10060; | Add assembly descriptions |
//! | &#10060; | Simplify the BOM |
//! | &#10060; | Finalize the build instructions |
//! | &#10060; | Build a prototype |
//! | &#10060; | Refine the design |
//! | &#10060; | Setup a project web site |
//! | &#10060; | Render an animated title picture |
//! | &#10060; | Configure/customize the Marlin firmware |
//! | &#10060; | Plot the first image |

include <./WPConfig.scad>

use <../scad/WPStepper.scad>
use <../scad/WPGondolaPen.scad>
use <../scad/WPWeight.scad>
use <../scad/WPController.scad>
use <../scad/WPBeadedChain.scad>

//Set view
//$vpt = [25,30,20];
//$vpr = [80,0,340];

//! A vertical plotter  . 
// ![inside](doc/DIYLB.gif?raw=true)

//! Finished!
module main_assembly() {
  //pose([30, 0, 0], [150,150,0])
    assembly("main") {

      //Left stepper
      WPStepperLeft_assembly();

      //Right stepper
      WPStepperRight_assembly();

      //Gondola
      translate([gondolaX,gondolaY,0]) WPGondolaPenBearings_assembly();

      //Left weight
      translate([-weightOffsX,-weightLeftY,0]) WPWeight_assembly();
        
      //Right weight
      translate([winW+weightOffsX,-weightRightY,0]) WPWeight_assembly();

      //Controller
      translate([winW/2,0,0]) WPController_assembly();

      //Beaded chains
      WPBeadedChainLeft();
      WPBeadedChainRight();

      //Window frame
      translate([0,0,-44]) windowFrame(glassHeight=winH,
                                       glassWidth=winW,
                                       drawingXF=drawingX,
                                       drawingYF=drawingY); 
    }
}

if($preview) {
    
  main_assembly();
}

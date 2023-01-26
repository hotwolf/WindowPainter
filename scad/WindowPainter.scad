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

//! A vertical plotter absed on therv . 
//! ![inside](doc/DIYLB.gif?raw=true)

include <WindowPainter_Config.scad>
include <WindowPainter_Stepper.scad>
//use     <WindowPainter_Gongola.scad>
//use     <WindowPainter_Control.scad>

//! Finished!
module main_assembly() {
  //pose([30, 0, 0], [150,150,0])
    assembly("main") {

    //Stepper motor assembly  
      WindowPainter_Stepper_assembly();


}

if($preview) {    
   main_assembly();
}

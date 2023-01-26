//###############################################################################
//# WindowPainter - Gondola Lifter                                              #
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
//#   Gondola lifter                                                            #
//#                                                                             #
//###############################################################################
//# Version History:                                                            #
//#   January 26, 2023                                                          #
//#      - Initial release                                                      #
//#                                                                             #
//###############################################################################

include <./WPConfig.scad>

//Set view
//$vpt = [-10,-60,15];
//$vpr = [330,-30,0];

//servo gear
module WPServoGear_stl() {  
  difference() {  
    linear_extrude(4) involute_gear_profile(.5,16);    
    sg90SplineCutout();
  }
}

//Lifter
module WPServoLifter_stl() {  

  translate([-12.5,5.5-centre_distance(0.5,16,16)/2,0])
    linear_extrude(4) involute_rack_profile(0.5, 15, 4);

}

//! TBD
module WPGondolaLifter_assembly() {
  pose([-10,-60,15], [330,-30,0])
  assembly("WPGondolaLifter") {


    transrot([0,5.5,0],[0,0,1]) WPServoGear_stl();
    
    WPServoLifter_stl();
      

    transrot([0,0,-8.75],[0,0,90]) sg90();

  
  }  
}

if($preview) {
   $explode = 1;
   WPGondolaLifter_assembly();
 }

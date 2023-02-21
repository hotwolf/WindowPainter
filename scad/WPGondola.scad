//###############################################################################
//# WindowPainter - Gondola Assembly                                            #
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
//#   February 17, 2023                                                          #
//#      - Initial release                                                      #
//#                                                                             #
//###############################################################################

include <./WPConfig.scad>

use <../scad/WPGondolaBearings.scad>
use <../scad/WPGondolaLifter.scad>

//Set view
//$vpt = [1,0,5];
//$vpr = [0,250,320];

//! TBD
module WPGondola_assembly() {
  pose([1,0,5], [0,250,320])
  assembly("WPGondola") {


   translate([0,0,0])  WPGondolaBearings_assembly();

   translate([0,-40,0]) WPGondolaLifter_assembly();
      
   translate([0,0,-44]) pen(r=undef,d=18);

       
  }  
}


if($preview) {
//   $explode = 1;
    
  WPGondola_assembly();
    
  translate([-winW/2,winH/2,-44]) windowFrame(glassHeight=winH,
                                              glassWidth=winW); 
 }

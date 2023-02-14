//###############################################################################
//# WindowPainter - Clamp Screw Assembly                                        #
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
//#   Clamp screw assembly                                                      #
//#                                                                             #
//###############################################################################
//# Version History:                                                            #
//#   February 10, 2023                                                         #
//#      - Initial release                                                      #
//#                                                                             #
//###############################################################################

include <WPConfig.scad>

//Set view
//$vpt = [25,30,20];
//$vpr = [80,0,340];
  
module WPClampScrewGrip_stl() {
  stl("WPClampScrewGrip");
  color(pp1_colour)
  screwClampGrip(type=M5_hex_screw);
}

module WPClampScrewShoe_stl() {
  stl("WPClampScrewShoe");
  color(pp1_colour)
  screwClampShoe(type=M5_hex_screw,length=20);
}
*WPClampScrewShoe_stl();

//Just in case
module WPClampScrew_assembly() {
  //pose([25,30,20], [80,0,240])
  //assembly("WPClampScrew") {
        
    explode(30)  WPClampScrewGrip_stl(); 
    explode(10)  WPClampScrewShoe_stl();
    explode(20)  screw(M5_hex_screw, 20);
  //}
}
 *WPClampScrew_assembly();

if($preview) {
    $explode = 1;
    WPClampScrew_assembly();
    
}

//###############################################################################
//# WindowPainter - Configuration                                               #
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
//#   Global configurations for the WindowPainter.                              #
//#                                                                             #
//###############################################################################
//# Version History:                                                            #
//#   January 20, 2023                                                          #
//#      - Initial release                                                      #
//#                                                                             #
//###############################################################################

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/screws.scad>
include <NopSCADlib/vitamins/nuts.scad>
include <NopSCADlib/vitamins/stepper_motors.scad>
include <NopSCADlib/utils/thread.scad>

use <../vitamins/sg90.scad>
use <../vitamins/pen.scad>

use <../printed/cylinderBearing.scad>
use <../printed/beadedChainIdler.scad>
use <../printed/beadedChainPulley.scad>
use <../printed/beadedChainMount.scad>
use <../printed/clampScrew.scad>
use <../printed/penClamp.scad>
use <../printed/sg90Spline.scad>

use <../models/windowFrame.scad>

use <../scad/WPPulley.scad>
use <../scad/WPAligner.scad>
use <../scad/WPStepperMount.scad>
use <../scad/WPStepperShaft.scad>
use <../scad/WPGondolaPen.scad>
use <../scad/WPGondolaLifter.scad>

//include <NopSCADlib/core.scad>
//include <NopSCADlib/vitamins/extrusions.scad>
//include <NopSCADlib/vitamins/screws.scad>
//include <NopSCADlib/vitamins/belts.scad>
//include <NopSCADlib/vitamins/pulleys.scad>
//include <NopSCADlib/vitamins/ball_bearings.scad>
//include <NopSCADlib/vitamins/rod.scad>
//include <NopSCADlib/vitamins/rails.scad>

//Global variables
//================

//Window size
winH   =  400; //Window height
winW   =  200; //Window width

//Beaded chain
bcBeadD = 3.2; //Bead diameter (+tolerance)
bcBeadS = 4;   //Bead spacing (distance between center of beads)
bcCordD = 1;   //Cord diameter

//Stepper
stepperT = NEMA17_40; //type of stepper motor

//Pen
penD = 20; //Pen diameter

//Color scheme
//============
//objC      = "yellow"; //Object color
//filC      = "orange"; //Filament color
//errC      = "red";    //Error color
//cavC      = "blue";   //Cavity color
//ghC       = "blue";   //Grip hole color
//dimC      = "gray";   //Color of dimension indicators
//labC      = "gray";   //Label color

//Common operations
//=================

//Combined translate and rotate
module transrot(trans=[0,0,0],rot=[0,0,0]) {
    translate(trans) rotate(rot) children();
}

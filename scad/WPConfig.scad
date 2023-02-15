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

//include <../lib/NopSCADlib/global_defs.scad>
include <../lib/NopSCADlib/lib.scad>
//include <NopSCADlib/core.scad>
include <../lib/NopSCADlib/vitamins/screws.scad>
include <../lib/NopSCADlib/vitamins/nuts.scad>
include <../lib/NopSCADlib/vitamins/stepper_motors.scad>
include <../lib/NopSCADlib/vitamins/microswitches.scad>
include <../lib/NopSCADlib/utils/thread.scad>

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

//use <../scad/WPPulley.scad>
//use <../scad/WPAligner.scad>
//use <../scad/WPClampScrew.scad>
//use <../scad/WPStepperMount.scad>
//use <../scad/WPStepperShaft.scad>
//use <../scad/WPStepperClamp.scad>
//use <../scad/WPEndstop.scad>
use <../scad/WPGondolaPen.scad>
use <../scad/WPGondolaLifter.scad>

//Global variables
//================

//Window size
winW   = 1000; //Window width
winH   =  800; //Window height

//Drawing
drawingX = function (t)  winW/2+0.4*winW*cos(360*t);
drawingY = function (t) -winH/2-0.4*winW*cos(360*t)*sin(360*t);

//Gondola position (origin is the upper left window corner)
gondolaX = drawingX($t); //X coordiate of the gondola
gondolaY = drawingY($t); //Y coordinate of the gondola
//gondolaX =  0*winW; //X coordiate of the gondola
//gondolaY = -winH; //Y coordinate of the gondola

//Beaded chain
bcBeadD = 3.2;     //Bead diameter (+tolerance)
bcBeadS = 4;       //Bead spacing (distance between center of beads)
bcCordD = 1;       //Cord diameter
bcBeadC = "Gray"; //Bead color

//Steppers
stepperT      = NEMA17_40; //type of stepper motor
stepperOffsX  = 50;        //X offset between the window corner and the stepper center
stepperOffsY  = 50;        //Y offset between the window corner and the stepper center
stepperS      = winW +2*stepperOffsX; //Distance between the stepper centers
stepperLeftA  = atan((gondolaY+stepperOffsY)/(gondolaX+stepperOffsX));
stepperRightA = 90+atan((gondolaY+stepperOffsY)/(winW-gondolaX+stepperOffsX));
//echo("stepperLeftA  = ", stepperLeftA); 
//echo("stepperRightA = ", stepperRightA); 

//Weights
weightOffsX    = stepperOffsX+10+64/PI;
weightOffsY    = 61; //Endstop Y offset (relative to the window corner)
weightMaxLiftS = sqrt(pow(winW+stepperOffsX,2)+pow(winH+stepperOffsY,2));
weightLeftY    = weightOffsY+(weightMaxLiftS-sqrt(pow(gondolaX+stepperOffsX,2)+pow(gondolaY-stepperOffsY,2)))/2;
weightRightY   = weightOffsY+(weightMaxLiftS-sqrt(pow(winW-gondolaX+stepperOffsX,2)+pow(gondolaY-stepperOffsY,2)))/2;
//echo("weightLeftY  = ", weightLeftY); 
//echo("weightRightY = ", weightRightY); 

//Pen
penD = 20; //Pen diameter

//Color scheme
//============
pp1_colour = "Orange"; //for static parts
pp2_colour = "Coral";  //for moving parts

//Common operations
//=================

//Combined translate and rotate
module transrot(trans=[0,0,0],rot=[0,0,0]) {
    translate(trans) rotate(rot) children();
}

<a name="TOP"></a>
# WindowPainter
![WindowPainter](img/wp.gif?raw=true)

WindowPainter is a project to recycle old 3D printers.
It's a vertical plotter, to be be mounted on a window frame.

This project is still work in progress. Here is my todo list:

| Status | Task  |
|:---|:---|
| &#9989; | Setup the project |
| &#9989; | Start the design |
| &#9989; | Run the NopSCADlib flow |
| &#10060; | Complete an initial version of the design |
| &#10060; | Add assembly descriptions |
| &#10060; | Simplify the BOM |
| &#10060; | Finalize the build instructions |
| &#10060; | Build a prototype |
| &#10060; | Refine the design |
| &#10060; | Setup a project web site |
| &#9989; | Render an animated title picture |
| &#10060; | Configure/customize the Marlin firmware |
| &#10060; | Plot the first image |

<span></span>

---
## Table of Contents
1. [Parts list](#Parts_list)
1. [WPControllerClamp Assembly](#WPControllerClamp_assembly)
1. [WPController Assembly](#WPController_assembly)
1. [WPWeight Assembly](#WPWeight_assembly)
1. [WPGondolaLifter Assembly](#WPGondolaLifter_assembly)
1. [WPGondolaPenClampD18 Assembly](#WPGondolaPenClampD18_assembly)
1. [WPGondolaPenBearings Assembly](#WPGondolaPenBearings_assembly)
1. [WPGondola Assembly](#WPGondola_assembly)
1. [WPStepperEndstopLeft Assembly](#WPStepperEndstopLeft_assembly)
1. [WPStepperMountWithInlays Assembly](#WPStepperMountWithInlays_assembly)
1. [WPStepperMounRight Assembly](#WPStepperMounRight_assembly)
1. [WPAlignerRight Assembly](#WPAlignerRight_assembly)
1. [WPPulley Assembly](#WPPulley_assembly)
1. [WPStepperShaftRight Assembly](#WPStepperShaftRight_assembly)
1. [WPStepperClampRight Assembly](#WPStepperClampRight_assembly)
1. [WPStepperMountLeft Assembly](#WPStepperMountLeft_assembly)
1. [WPAlignerLeft Assembly](#WPAlignerLeft_assembly)
1. [WPStepperShaftLeft Assembly](#WPStepperShaftLeft_assembly)
1. [WPStepperClampLeft Assembly](#WPStepperClampLeft_assembly)
1. [Main Assembly](#main_assembly)

<span></span>
[Top](#TOP)

---
<a name="Parts_list"></a>
## Parts list
| <span style="writing-mode: vertical-rl; text-orientation: mixed;">WPControllerClamp</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">WPController</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">2 x WPWeight</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">WPGondolaLifter</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">2 x WPGondolaPenClampD18</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">WPGondolaPenBearings</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">WPGondola</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">2 x WPStepperEndstopLeft</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">WPStepperMounRight</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">WPAlignerRight</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">2 x WPPulley</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">WPStepperShaftRight</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">2 x WPStepperClampRight</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">WPStepperMountLeft</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">WPAlignerLeft</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">WPStepperShaftLeft</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">2 x WPStepperClampLeft</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">Main</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">TOTALS</span> |  |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|:---|
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | **Vitamins** |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; |  &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp; Beaded chain (diameter=3mm, spacing=4mm) |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; |  &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp; Beaded chain (diameter=3mm, spacing=4mm) |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp; Microswitch SS-01 or SS-5GL |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;3&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;3&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;16&nbsp; | &nbsp;&nbsp; Nut M3 x 2.4mm  |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp; Nut M3nS 5.5 x 1.8mm  |
| &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;6&nbsp; | &nbsp;&nbsp; Nut M5 x 4mm  |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp; RapRapDiscount Smart Controller |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp; SG90 servo motor |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp; Screw M3 dome x  8mm |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;3&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;3&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;6&nbsp; | &nbsp;&nbsp; Screw M3 dome x 10mm |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp; Screw M3 dome x 12mm |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;6&nbsp; | &nbsp;&nbsp; Screw M3 dome x 20mm |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;3&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;3&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;8&nbsp; | &nbsp;&nbsp; Screw M3 pan x  8mm |
| &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;6&nbsp; | &nbsp;&nbsp; Screw M5 hex x 20mm |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp; Stepper motor NEMA17 x 40mm |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;3&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;5&nbsp; | &nbsp;&nbsp;3&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;5&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;26&nbsp; | &nbsp;&nbsp; Washer  M3 x 7mm x 0.5mm |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;3&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;3&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;6&nbsp; | &nbsp;&nbsp; Washer star M3 x 0.5mm |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp; Window pen |
| &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;9&nbsp; | &nbsp;&nbsp;6&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;14&nbsp; | &nbsp;&nbsp;13&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;16&nbsp; | &nbsp;&nbsp;13&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;16&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;99&nbsp; | &nbsp;&nbsp;Total vitamins count |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | **3D printed parts** |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;WPAlignerIdler.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;WPAlignerLeft.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;WPAlignerRight.stl |
| &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;6&nbsp; | &nbsp;&nbsp;WPClampScrewGrip.stl |
| &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;6&nbsp; | &nbsp;&nbsp;WPClampScrewShoe.stl |
| &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;WPControllerClamp.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;WPGondolaBearing.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;WPGondolaPenClampD18Part1.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;WPGondolaPenClampD18Part2.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;WPGondolaPenClampD18Part3.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;WPGondolaPenClampD18Part4.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;WPPulley.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;WPServoGear.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;WPServoLifter.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;WPStepperClampLeft.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;WPStepperClampRight.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;WPStepperEndstopLeft.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;WPStepperEndstopRight.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;WPStepperMountWithInlays.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;3&nbsp; | &nbsp;&nbsp;WPWeightBottom.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;WPWeightIdler.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;WPWeightTop.stl |
| &nbsp;&nbsp;5&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;6&nbsp; | &nbsp;&nbsp;3&nbsp; | &nbsp;&nbsp;8&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;3&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;5&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;3&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;5&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;46&nbsp; | &nbsp;&nbsp;Total 3D printed parts count |

<span></span>
[Top](#TOP)

---
<a name="WPControllerClamp_assembly"></a>
## WPControllerClamp Assembly
### Vitamins
|Qty|Description|
|---:|:----------|
|2| Nut M5 x 4mm |
|2| Screw M5 hex x 20mm|


### 3D Printed parts

| 2 x WPClampScrewGrip.stl | 2 x WPClampScrewShoe.stl | 1 x WPControllerClamp.stl |
|---|---|---|
| ![WPClampScrewGrip.stl](stls/WPClampScrewGrip.png) | ![WPClampScrewShoe.stl](stls/WPClampScrewShoe.png) | ![WPControllerClamp.stl](stls/WPControllerClamp.png) 



### Assembly instructions
![WPControllerClamp_assembly](assemblies/WPControllerClamp_assembly.png)

TBD

![WPControllerClamp_assembled](assemblies/WPControllerClamp_assembled.png)

<span></span>
[Top](#TOP)

---
<a name="WPController_assembly"></a>
## WPController Assembly
### Vitamins
|Qty|Description|
|---:|:----------|
|1| RapRapDiscount Smart Controller|
|4| Screw M3 dome x 20mm|
|4| Washer  M3 x 7mm x 0.5mm|


### Sub-assemblies

| 1 x WPControllerClamp_assembly |
|---|
| ![WPControllerClamp_assembled](assemblies/WPControllerClamp_assembled_tn.png) 



### Assembly instructions
![WPController_assembly](assemblies/WPController_assembly.png)

TBD

![WPController_assembled](assemblies/WPController_assembled.png)

<span></span>
[Top](#TOP)

---
<a name="WPWeight_assembly"></a>
## 2 x WPWeight Assembly
### Vitamins
|Qty|Description|
|---:|:----------|
|2| Nut M3 x 2.4mm |
|2| Screw M3 dome x 20mm|
|2| Washer  M3 x 7mm x 0.5mm|


### 3D Printed parts

| 2 x WPWeightBottom.stl | 2 x WPWeightIdler.stl | 2 x WPWeightTop.stl |
|---|---|---|
| ![WPWeightBottom.stl](stls/WPWeightBottom.png) | ![WPWeightIdler.stl](stls/WPWeightIdler.png) | ![WPWeightTop.stl](stls/WPWeightTop.png) 



### Assembly instructions
![WPWeight_assembly](assemblies/WPWeight_assembly_tn.png)

TBD

![WPWeight_assembled](assemblies/WPWeight_assembled_tn.png)

<span></span>
[Top](#TOP)

---
<a name="WPGondolaLifter_assembly"></a>
## WPGondolaLifter Assembly
### Vitamins
|Qty|Description|
|---:|:----------|
|1| SG90 servo motor|


### 3D Printed parts

| 1 x WPServoGear.stl | 1 x WPServoLifter.stl | 1 x WPWeightBottom.stl |
|---|---|---|
| ![WPServoGear.stl](stls/WPServoGear.png) | ![WPServoLifter.stl](stls/WPServoLifter.png) | ![WPWeightBottom.stl](stls/WPWeightBottom.png) 



### Assembly instructions
![WPGondolaLifter_assembly](assemblies/WPGondolaLifter_assembly_tn.png)

TBD

![WPGondolaLifter_assembled](assemblies/WPGondolaLifter_assembled_tn.png)

<span></span>
[Top](#TOP)

---
<a name="WPGondolaPenClampD18_assembly"></a>
## 2 x WPGondolaPenClampD18 Assembly
### 3D Printed parts

| 2 x WPGondolaPenClampD18Part1.stl | 2 x WPGondolaPenClampD18Part2.stl | 2 x WPGondolaPenClampD18Part3.stl |
|---|---|---|
| ![WPGondolaPenClampD18Part1.stl](stls/WPGondolaPenClampD18Part1.png) | ![WPGondolaPenClampD18Part2.stl](stls/WPGondolaPenClampD18Part2.png) | ![WPGondolaPenClampD18Part3.stl](stls/WPGondolaPenClampD18Part3.png) 


| 2 x WPGondolaPenClampD18Part4.stl |
|---|
| ![WPGondolaPenClampD18Part4.stl](stls/WPGondolaPenClampD18Part4.png) 



### Assembly instructions
![WPGondolaPenClampD18_assembly](assemblies/WPGondolaPenClampD18_assembly_tn.png)

TBD

![WPGondolaPenClampD18_assembled](assemblies/WPGondolaPenClampD18_assembled_tn.png)

<span></span>
[Top](#TOP)

---
<a name="WPGondolaPenBearings_assembly"></a>
## WPGondolaPenBearings Assembly
### 3D Printed parts

| 2 x WPGondolaBearing.stl |
|---|
| ![WPGondolaBearing.stl](stls/WPGondolaBearing.png) 



### Sub-assemblies

| 2 x WPGondolaPenClampD18_assembly |
|---|
| ![WPGondolaPenClampD18_assembled](assemblies/WPGondolaPenClampD18_assembled_tn.png) 



### Assembly instructions
![WPGondolaPenBearings_assembly](assemblies/WPGondolaPenBearings_assembly.png)

![WPGondolaPenBearings_assembled](assemblies/WPGondolaPenBearings_assembled.png)

<span></span>
[Top](#TOP)

---
<a name="WPGondola_assembly"></a>
## WPGondola Assembly
### Vitamins
|Qty|Description|
|---:|:----------|
|1| Window pen|


### Sub-assemblies

| 1 x WPGondolaLifter_assembly | 1 x WPGondolaPenBearings_assembly |
|---|---|
| ![WPGondolaLifter_assembled](assemblies/WPGondolaLifter_assembled_tn.png) | ![WPGondolaPenBearings_assembled](assemblies/WPGondolaPenBearings_assembled_tn.png) 



### Assembly instructions
![WPGondola_assembly](assemblies/WPGondola_assembly.png)

TBD

![WPGondola_assembled](assemblies/WPGondola_assembled.png)

<span></span>
[Top](#TOP)

---
<a name="WPStepperEndstopLeft_assembly"></a>
## 2 x WPStepperEndstopLeft Assembly
### Vitamins
|Qty|Description|
|---:|:----------|
|2| Microswitch SS-01 or SS-5GL|
|4| Nut M3 x 2.4mm |
|4| Screw M3 dome x 12mm|
|4| Washer  M3 x 7mm x 0.5mm|


### 3D Printed parts

| 1 x WPStepperEndstopLeft.stl | 1 x WPStepperEndstopRight.stl |
|---|---|
| ![WPStepperEndstopLeft.stl](stls/WPStepperEndstopLeft.png) | ![WPStepperEndstopRight.stl](stls/WPStepperEndstopRight.png) 



### Assembly instructions
![WPStepperEndstopLeft_assembly](assemblies/WPStepperEndstopLeft_assembly_tn.png)

TBD

![WPStepperEndstopLeft_assembled](assemblies/WPStepperEndstopLeft_assembled_tn.png)

<span></span>
[Top](#TOP)

---
<a name="WPStepperMountWithInlays_assembly"></a>
## 2 x WPStepperMountWithInlays Assembly
### Vitamins
|Qty|Description|
|---:|:----------|
|6| Nut M3 x 2.4mm |


### 3D Printed parts

| 2 x WPStepperMountWithInlays.stl |
|---|
| ![WPStepperMountWithInlays.stl](stls/WPStepperMountWithInlays.png) 



### Assembly instructions
![WPStepperMountWithInlays_assembly](assemblies/WPStepperMountWithInlays_assembly_tn.png)

TBD

![WPStepperMountWithInlays_assembled](assemblies/WPStepperMountWithInlays_assembled_tn.png)

<span></span>
[Top](#TOP)

---
<a name="WPStepperMounRight_assembly"></a>
## WPStepperMounRight Assembly
### Vitamins
|Qty|Description|
|---:|:----------|
|3| Screw M3 pan x  8mm|
|1| Stepper motor NEMA17 x 40mm|
|3| Washer  M3 x 7mm x 0.5mm|
|3| Washer star M3 x 0.5mm|


### Sub-assemblies

| 1 x WPStepperMountWithInlays_assembly |
|---|
| ![WPStepperMountWithInlays_assembled](assemblies/WPStepperMountWithInlays_assembled_tn.png) 



### Assembly instructions
![WPStepperMounRight_assembly](assemblies/WPStepperMounRight_assembly_tn.png)

![WPStepperMounRight_assembled](assemblies/WPStepperMounRight_assembled_tn.png)

<span></span>
[Top](#TOP)

---
<a name="WPAlignerRight_assembly"></a>
## WPAlignerRight Assembly
### 3D Printed parts

| 2 x WPAlignerIdler.stl | 1 x WPAlignerRight.stl |
|---|---|
| ![WPAlignerIdler.stl](stls/WPAlignerIdler.png) | ![WPAlignerRight.stl](stls/WPAlignerRight.png) 



### Assembly instructions
![WPAlignerRight_assembly](assemblies/WPAlignerRight_assembly_tn.png)

TBD

![WPAlignerRight_assembled](assemblies/WPAlignerRight_assembled_tn.png)

<span></span>
[Top](#TOP)

---
<a name="WPPulley_assembly"></a>
## 2 x WPPulley Assembly
### Vitamins
|Qty|Description|
|---:|:----------|
|2| Nut M3nS 5.5 x 1.8mm |
|2| Screw M3 pan x  8mm|


### 3D Printed parts

| 2 x WPPulley.stl |
|---|
| ![WPPulley.stl](stls/WPPulley.png) 



### Assembly instructions
![WPPulley_assembly](assemblies/WPPulley_assembly_tn.png)

TBD

![WPPulley_assembled](assemblies/WPPulley_assembled_tn.png)

<span></span>
[Top](#TOP)

---
<a name="WPStepperShaftRight_assembly"></a>
## WPStepperShaftRight Assembly
### Sub-assemblies

| 1 x WPAlignerRight_assembly | 1 x WPPulley_assembly | 1 x WPStepperMounRight_assembly |
|---|---|---|
| ![WPAlignerRight_assembled](assemblies/WPAlignerRight_assembled_tn.png) | ![WPPulley_assembled](assemblies/WPPulley_assembled_tn.png) | ![WPStepperMounRight_assembled](assemblies/WPStepperMounRight_assembled_tn.png) 



### Assembly instructions
![WPStepperShaftRight_assembly](assemblies/WPStepperShaftRight_assembly_tn.png)

TBD

![WPStepperShaftRight_assembled](assemblies/WPStepperShaftRight_assembled_tn.png)

<span></span>
[Top](#TOP)

---
<a name="WPStepperClampRight_assembly"></a>
## 2 x WPStepperClampRight Assembly
### Vitamins
|Qty|Description|
|---:|:----------|
|2| Nut M3 x 2.4mm |
|2| Nut M5 x 4mm |
|2| Screw M3 dome x  8mm|
|3| Screw M3 dome x 10mm|
|2| Screw M5 hex x 20mm|
|5| Washer  M3 x 7mm x 0.5mm|


### 3D Printed parts

| 2 x WPClampScrewGrip.stl | 2 x WPClampScrewShoe.stl | 1 x WPStepperClampRight.stl |
|---|---|---|
| ![WPClampScrewGrip.stl](stls/WPClampScrewGrip.png) | ![WPClampScrewShoe.stl](stls/WPClampScrewShoe.png) | ![WPStepperClampRight.stl](stls/WPStepperClampRight.png) 



### Sub-assemblies

| 1 x WPStepperClampRight_assembly | 1 x WPStepperEndstopLeft_assembly | 1 x WPStepperShaftRight_assembly |
|---|---|---|
| ![WPStepperClampRight_assembled](assemblies/WPStepperClampRight_assembled_tn.png) | ![WPStepperEndstopLeft_assembled](assemblies/WPStepperEndstopLeft_assembled_tn.png) | ![WPStepperShaftRight_assembled](assemblies/WPStepperShaftRight_assembled_tn.png) 



### Assembly instructions
![WPStepperClampRight_assembly](assemblies/WPStepperClampRight_assembly.png)

TBD

![WPStepperClampRight_assembled](assemblies/WPStepperClampRight_assembled.png)

<span></span>
[Top](#TOP)

---
<a name="WPStepperMountLeft_assembly"></a>
## WPStepperMountLeft Assembly
### Vitamins
|Qty|Description|
|---:|:----------|
|3| Screw M3 pan x  8mm|
|1| Stepper motor NEMA17 x 40mm|
|3| Washer  M3 x 7mm x 0.5mm|
|3| Washer star M3 x 0.5mm|


### Sub-assemblies

| 1 x WPStepperMountWithInlays_assembly |
|---|
| ![WPStepperMountWithInlays_assembled](assemblies/WPStepperMountWithInlays_assembled_tn.png) 



### Assembly instructions
![WPStepperMountLeft_assembly](assemblies/WPStepperMountLeft_assembly_tn.png)

TBD

![WPStepperMountLeft_assembled](assemblies/WPStepperMountLeft_assembled_tn.png)

<span></span>
[Top](#TOP)

---
<a name="WPAlignerLeft_assembly"></a>
## WPAlignerLeft Assembly
### 3D Printed parts

| 2 x WPAlignerIdler.stl | 1 x WPAlignerLeft.stl |
|---|---|
| ![WPAlignerIdler.stl](stls/WPAlignerIdler.png) | ![WPAlignerLeft.stl](stls/WPAlignerLeft.png) 



### Assembly instructions
![WPAlignerLeft_assembly](assemblies/WPAlignerLeft_assembly_tn.png)

TBD

![WPAlignerLeft_assembled](assemblies/WPAlignerLeft_assembled_tn.png)

<span></span>
[Top](#TOP)

---
<a name="WPStepperShaftLeft_assembly"></a>
## WPStepperShaftLeft Assembly
### Sub-assemblies

| 1 x WPAlignerLeft_assembly | 1 x WPPulley_assembly | 1 x WPStepperMountLeft_assembly |
|---|---|---|
| ![WPAlignerLeft_assembled](assemblies/WPAlignerLeft_assembled_tn.png) | ![WPPulley_assembled](assemblies/WPPulley_assembled_tn.png) | ![WPStepperMountLeft_assembled](assemblies/WPStepperMountLeft_assembled_tn.png) 



### Assembly instructions
![WPStepperShaftLeft_assembly](assemblies/WPStepperShaftLeft_assembly_tn.png)

TBD

![WPStepperShaftLeft_assembled](assemblies/WPStepperShaftLeft_assembled_tn.png)

<span></span>
[Top](#TOP)

---
<a name="WPStepperClampLeft_assembly"></a>
## 2 x WPStepperClampLeft Assembly
### Vitamins
|Qty|Description|
|---:|:----------|
|2| Nut M3 x 2.4mm |
|2| Nut M5 x 4mm |
|2| Screw M3 dome x  8mm|
|3| Screw M3 dome x 10mm|
|2| Screw M5 hex x 20mm|
|5| Washer  M3 x 7mm x 0.5mm|


### 3D Printed parts

| 2 x WPClampScrewGrip.stl | 2 x WPClampScrewShoe.stl | 1 x WPStepperClampLeft.stl |
|---|---|---|
| ![WPClampScrewGrip.stl](stls/WPClampScrewGrip.png) | ![WPClampScrewShoe.stl](stls/WPClampScrewShoe.png) | ![WPStepperClampLeft.stl](stls/WPStepperClampLeft.png) 



### Sub-assemblies

| 1 x WPStepperClampLeft_assembly | 1 x WPStepperEndstopLeft_assembly | 1 x WPStepperShaftLeft_assembly |
|---|---|---|
| ![WPStepperClampLeft_assembled](assemblies/WPStepperClampLeft_assembled_tn.png) | ![WPStepperEndstopLeft_assembled](assemblies/WPStepperEndstopLeft_assembled_tn.png) | ![WPStepperShaftLeft_assembled](assemblies/WPStepperShaftLeft_assembled_tn.png) 



### Assembly instructions
![WPStepperClampLeft_assembly](assemblies/WPStepperClampLeft_assembly.png)

TBD

![WPStepperClampLeft_assembled](assemblies/WPStepperClampLeft_assembled.png)

<span></span>
[Top](#TOP)

---
<a name="main_assembly"></a>
## Main Assembly
### Vitamins
|Qty|Description|
|---:|:----------|
|1| Beaded chain (diameter=3mm, spacing=4mm)|
|1| Beaded chain (diameter=3mm, spacing=4mm)|


### Sub-assemblies

| 1 x WPController_assembly | 1 x WPGondola_assembly | 1 x WPStepperClampLeft_assembly |
|---|---|---|
| ![WPController_assembled](assemblies/WPController_assembled_tn.png) | ![WPGondola_assembled](assemblies/WPGondola_assembled_tn.png) | ![WPStepperClampLeft_assembled](assemblies/WPStepperClampLeft_assembled_tn.png) 


| 1 x WPStepperClampRight_assembly | 2 x WPWeight_assembly |
|---|---|
| ![WPStepperClampRight_assembled](assemblies/WPStepperClampRight_assembled_tn.png) | ![WPWeight_assembled](assemblies/WPWeight_assembled_tn.png) 



### Assembly instructions
![main_assembly](assemblies/main_assembly.png)

A vertical plotter  . 
Finished!

![main_assembled](assemblies/main_assembled.png)

<span></span>
[Top](#TOP)

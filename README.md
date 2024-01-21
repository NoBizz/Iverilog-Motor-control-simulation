<h2 align="center">Motor control simulation for 3D printers</h2>


<p align = "center"><img src="https://github.com/NoBizz/Iverilog-Motor-control-simulation/blob/main/img/IMG_20240119_190456.jpg?raw=true" width="400" height="500"/><img></p>


<h2 align = "left">Motives</h2>

<p align = "left">
  I purchesed a 3D printer some time ago, it has served me well, the technology required to create and operate such a machine
  is incredible, how hard can it be I thought, turns out pritty hard, to figure out how to build first we must disassemble.
</p>


<h2 align = "left">The process</h2>

<p align = "left">
The focus is mainly on finetuning and optimization of on board sensores and motor controllers, seeing how much room is there to work with.
</p>

<p align = "center"><img src="https://github.com/NoBizz/Iverilog-Motor-control-simulation/blob/main/img/IMG_20240119_191723.jpg?raw=true" width="200" height="200"/><img></p>


<p align = "left">
The first aspect to look at are the sensores, more specificaly those on the head of the printer and that of the extruder further on the back,
  reading this information will help with auxiliary systems and their optimization as their usage takes a long time, the head sensor is used for bed leveling quite boring but an extreamly important aspect, the aim is to speed this process up and get more accurate readings.
</p>

<p align = "center"><img src="https://github.com/NoBizz/Iverilog-Motor-control-simulation/blob/main/img/IMG_20240119_191807.jpg?raw=true" width="200" height="200"/><img></p>

<p align = "left">
Next motor control and optimization, such a simple piece of machinery hides many tricks, I primarly use "half stepping" in this segment as it increses both accuracy of the motors and their speed, this is by far the most impactfull aspect as it directly contributes to the quality of prints.
</p>

<h2 align = "left">Conclusion</h2>
<p align = "center"><img src="https://github.com/NoBizz/Iverilog-Motor-control-simulation/blob/main/img/IMG_20240119_193007.jpg?raw=true" width="150" height="100"/><img></p>

<p align = "left">
I am glad the printer works under this directive although not perfect throught some testing smaller prints benefit the most as the more fine graned movement of the motors is better suited for small items, up to 4,5 cubuc cm in size, everything above this sice it seems not to improve the quality.
</p>

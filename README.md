# AUV-3D-Simulation
<br />
####**One of my projects developed during my summer internship at IIT-Madras in June-July 2017.**
<br />
An autonomous underwater vehicle (AUV) is a robotic device that travels underwater by a propulsion system, controlled and piloted by an onboard computer, and maneuverable in three dimensions without requiring input from an operator. MAYA was India’s first Indigenously developed Autonomous Underwater Vehicle.
<br />
A 2D simulation was also developed prior to 3D simulation.
**While creating a 3D figure of AUV, the x and y axes or the roll and yaw angles of the vehicle were kept in mind while plotting. For simplicity, the vehicle was created with 3 parts, head – triangle, tail –triangle, fuselage (body)  - a rectangle.
For initial examination, a list of x and y values were generated from the experimental AUV control system made in SIMULINK (MATLAB), which was successfully tested. And finally, the 3D simulation was observed with the real-time motion values of an AUV which showed stunning movements of an AUV.

<br />
<br />

The nose of an AUV is made in such a way to minimize the drag forces to give it better heterodynamic features and is really not a hemisphere. Its formula is given by :
		R(x)    =  D*(1 – ((x-a)/a)^2)^1/n
R(x) describes the radius of nose as a function of x, the distance of nose form its centre. Since, the vehicle moves forward in the x – axis, radius could be find using it and so, value of y and z axis can be calculated according to the cos(theta) , sin(theta) parameters.

<br />
A 3D graph of Ballast masses v/s velocity v/s the pitch angle was plotted which came out to be as desired. There are 1680 combinations of ballast masses as they can hold 20kg of water each and hence there are 1680 points on this graph. This shows symmetric nature and is also linearised.
<br /><br />
**3D Simulation**
<br />
A cylindrical body was designed as the main body of the AUV with the tail same as that of the nose for simplicity as the sole purpose of the simulation is to understand forces and controls.
The vehicle has x-axis for its forward and backward translation, y-axis for sideways movement and z-axis for up-down movements. A slider was used as a GUI element made using GUIDE layout editor for the body’s rotation along the y-axis. 

<br /><br />

A number of future improvements to the AUV simulation development have been  identified.
Since, this project involved 2D animation and 3D animation with rotation along one axis only which is the y-axis. For better understanding, it must rotate along all of the 6 DOF’s. 

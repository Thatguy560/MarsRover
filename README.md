# Mars Rover Technical Challenge

**Requirements** 

A squad of robotic rovers are to be landed by NASA on a plateau on Mars. This plateau, which is curiously rectangular, must be navigated by the rovers so that their on board cameras can get a complete view of the surrounding terrain to send back to Earth. A rover's position is represented by a combination of an x and y co-ordinates and a letter representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North. In order to control a rover, NASA sends a simple string of letters. The possible letters are 'L', 'R' and 'M'. 'L' and 'R' makes the rover spin 90 degrees left or right respectively, without moving from its current spot. 'M' means move forward one grid point, and maintain the same heading. Assume that the square directly North from (x, y) is (x, y+1).

**Preparation**

![Planning1](Assets/118301811_629375557764647_7487401521254086730_n.jpg)

![Planning2](Assets/118453424_615477752492752_5306749641348469864_n.jpg)

![Planning3](Assets/118501925_3569553699724094_5064268417354812596_n.jpg)

**Input**

The first line of input is the upper-right coordinates of the plateau, the lower-left coordinates are assumed to be 0,0. The rest of the input is information pertaining to the rovers that have been deployed. Each rover has two lines of input. The first line gives the rover's position, and the second line is a series of instructions telling the rover how to explore the plateau. The position is made up of two integers and a letter separated by spaces, corresponding to the x and y co-ordinates and the rover's orientation. Each rover will be finished sequentially, which means that the second rover won't start to move until the first one has finished moving.

**Output** 

The output for each rover should be its final co-ordinates and heading.

**Test Input:** 

5 5

1 2 N

LMLMLMLMM

3 3 E

MMRMMRMRRM

**Expected Output:**

13N

51E


# Genetic Algorithms

This is a simple MATLAB implementation of genetic algorithms (GA). Two demos are shown here: First one finds the maximum point of a single-input function. It will show the evolution of the populations and the maximum point. The second one solves the Tower of Hanoi using GA. To run the Tower of Hanoi, follow the instructions inside its folder.

## Getting Started

# Tower of Hanoi
Download the repo to your MATLAB workspace. To try the maximization problem, open genetic_algorithm.m with MATLAB. Then Simply press 'Run' or hit F5 to see the demo, or type genetic_algorithm() in the command window and hit Enter.

# Tower of Hanoi
The Tower of Hanoi puzzle consists of three poles and a number of rings of different sizes which can move onto any pole. The puzzle starts with the rings neatly stacked in order of the size on one pole, the smallest at the top, making a conical shape. (Figure 1)
The objective of the puzzle is to move the entire rings to another pole, obeying the following rules:

* Only one ring may be moved at a time.
* Each move consists of taking the upper ring from one of the poles and moving it onto another pole, on top of the other rings that may already be present on that pole.
* No ring may be placed on top of a smaller ring.

The classical recursive solution tells that within $2^n - 1$ moves, where $n$ is the number of rings, puzzle can be solved. In fact this is the optimal answer to the puzzle.

### Prerequisites

MATLAB R2016b

## Authors

* **Sajad Saeedi** 

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

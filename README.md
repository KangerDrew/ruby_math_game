# TwO-O-Player Math Game

This simple 2 player OOP-based command-line game was created using Ruby. Players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Classes

- Game: This class will manage the flow of the game, prompting player 1 and player 2 to input the correct answer to the addition problem.
- Player: This class will keep track of the player's name, and their current point (a.k.a. life)

### Game Methods

The methods below are private, as they don't need to be accessed outside of the scope of the Game class.

- The game needs to generate two random number between 1 and 20 for summation question. This will be done using **<ins>rand_num</ins>**
- The Game has to switch between asking player 1 for the correct answer, and asking player 2 for the answer. This will be done via **<ins>set_player</ins>**. This function takes in 2 player class as input.
- Since we will be repeatedly checking to see if either of the player has reached the lifepoint 0, we will implement the function **<ins>game_over?</ins>** to return a boolean to indicate the status of the game.
- After the game is over, the lifepoints for both players will be reset back to 3 using **<ins>life_reset</ins>**.
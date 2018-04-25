/**This is a class that controls the board layout and game logic.
*/

public interface Board {
  
  /**returns the current score of this game of pacman
     @return current score
  */
  public int score();
  
  /**returns current number of lives pacman has left
     @return pacman's remaining lives 
  */
  public int numberLives();
  
  /**updates board with new position of mobs based on given direction
     and gameComponents to what they should be
     @pre game is not over and
     @param direction sets pacman's position for that turn
     @post score is updated, if pacman died appropriate end game
           has started. If no issues, then every mob would have
           moved one space and any edible game components would be
           eaten.
  */
  public void updatePosition(int direction);
  
  /**returns true if the number of lives is 0,
     false otherwise
     @return whether or not the game is over
  */
  public boolean gameOver();
  
  /**returns true if game is over or pacman was eaten by ghost,
     false otherwise
     @return whether or not round is over
  */
  public boolean roundOver();
}

--------------------------------------------------------------------------------------------------
*Example code for this interface

public class gameLogic() {
  public int score() {
    everytime pacman eats a dot or powerup or fruit or ghost, increment score by appropriate value;
  }
  
  public int numberLives() {
    if pacman runs into ghost, decrease number of lives;
    return number of remaining lives;
  }
  
  public void updatePosition(int direction) {
    if (direction is right) {
      move Pacman right;
    } else if {
      ...
    } else {
      ...
    }
  }
  
  public boolean gameOver() {
    determines whether the game is over by examining the number of lives;
  }
  
  public boolean roundOver() {
    returns if pacman was eaten by ghost || gameOver
  }
}

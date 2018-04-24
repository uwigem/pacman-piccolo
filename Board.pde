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

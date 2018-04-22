/**This is a class that controls the board layout and game logic.
*/

public interface Board {
  
  /**returns current score
     @return current score
  */
  public int score();
  
  /**returns current number of lives pacman has left
     @return pacman's remaining lives 
  */
  public int numberLives();
  
  /**updates board with new position of mobs based on given direction
     and gameComponents to what they should be
     @param direction sets position to what it should be
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

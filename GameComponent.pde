/**This is a class that manages the different components of the game.
*/

public interface GameComponent {

  /**if game component is eaten, score is increased by returned amount
     @return score to be increased by
  */
  public int addScore();
  
  /**returns the graphical representation of the gameComponent
     @return graphical representation of gameComponent
  */
  public Image getAppearance();  

  /**sets the current image of this gameComponent based on given direction
     @param direction appearance is based on given direction
  */
  public void setAppearance(int direction);
  
  /**returns true if gameComponent can be passed or false if not
     @return whether or not gameComponent can be passed or not
  */
  public boolean isPassable();
  
  /**returns true if gameComponent can be eaten by ghosts, false if not
     @return whether or not gameComponent can be eaten by ghosts
  */
  public boolean eatableByGhosts();
  
  /**returns true if gameComponent can be eaten by pacman, false if not
     @return whether or not gameComponent can be eaten by pacman
  */
  public boolean eatableByPacman();
}

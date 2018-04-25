/**This is a class that controls the mobs of Pacman.
*/

public interface Mobs {
  /**returns true if mob is vulnerable
     and returns false if invincible and ready to eat
     @return whether or not mob is vulnerable
  */
  public boolean isVulnerable();
  
  /**sets vulnerability
     if parameter is true, mob is vulnerable,
     else, mob is invincible
     @param vulnerable sets vulnerability of mob
  */
  public void setVulnerable(boolean vulnerable);
  
  /**returns the graphical representation of the mob
     @return graphical representation of mob
  */
  public Image getAppearance();
  
  /**sets the current image of this mob based on given direction
     @param direction appearance is based on given direction
  */
  public void setAppearance(int direction);
  
  /**updates individual mob to appropriate state when pacman eats powerup
  */
  public void powerupEaten();
}

--------------------------------------------------------------------------------
*Example code using this interface

public class Pacman {
  public boolean isVulnerable() {
    return if the pacman is in powerUp mode or not;
  }
  
  public void setVulnerable(boolean vulnerable) {
    if vulnerable is true, then give Pacman a series of conditions/behaviors that would make it "vulnerable";
    else, assign Pacman invincible behavior;
  }
  
  public Image getAppearance() {
    return an image of pacman;
  }
  
  public Image setAppearance(int direction) {
    //example
    if (direction is right) {
      return an image of Pacman facing its mouth towards the right;
    } else if (direction is up) {
      return an image of Pacman facing up
    } else if {
      ...
    } else {
      ...
    }
  }
  
  public void powerUpEaten() {
    make Pacman match the condition of when powerUp is eaten
    //able to eat ghosts,
    etc.
  }
}

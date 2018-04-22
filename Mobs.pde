public interface Mobs {
  /**returns true if mob is vulnerable
     and returns false if invincible and ready to eat
     @return whether or not mob is vulnerable
  */
  public boolean isVulnerable();
  
  /**sets vulnerability
     if parameter is true, mob is vulnerable,
     else, mob is invincible
     @param sets vulnerability of mob
  */
  public void setVulnerable(boolean vulnerable);
  
  /**returns the graphical representation of the mob
     @return graphical representation of mob
  */
  public Image getAppearance();
  
  /**sets the current image of this mob based on given direction
     @param appearance is based on given direction
  */
  public void setAppearance(int direction);
}

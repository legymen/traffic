void renderWalkSignal(boolean walk) {
  // This function renders a walk signal.

  color black = color(0);
  color redLight = color(255, 0, 0 );
  color greenLight = color(0, 255, 0);
  color offLight = color(200);


  // Render the "box"
  fill(black);
  rect(400, 100, 100, 200);

  // Render red light if on
  if (walk) {
    fill(offLight);
  } else {
    fill(redLight);
  }
  ellipse(450, 150, 75, 75);

  // Render green light if on
  if (walk) {
    fill(greenLight);
  } else {
    fill(offLight);
  }
  ellipse(450, 250, 75, 75);

}

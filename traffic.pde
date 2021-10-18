
int start;

int state;

void setup() {
  size(600, 700);
  background(180);
  start = millis();
  state = 0;
}

void draw() {

  if (state == 0) {
    renderTrafficLight(true, false, false);
      renderWalkSignal(true);
    if (millis() - start > 2000) {
      state = 1;
      start = millis();
    }
  }
  if (state == 1) {
    renderTrafficLight(true, true, false);
      renderWalkSignal(false);
    if (millis() - start > 2000) {
      state = 2;
      start = millis();
    }
  }
  if (state == 2) {
    renderTrafficLight(false, false, true);
      renderWalkSignal(false);
    if (millis() - start > 2000) {
      state = 3;
      start = millis();
    }
  }
  if (state == 3) {
    renderTrafficLight(false, true, false);
      renderWalkSignal(false);
    if (millis() - start > 2000) {
      state = 0;
      start = millis();
    }
  }

  if (buttonPressed()) {
    renderButton(true);
  } else {
    renderButton(false);
  }
}

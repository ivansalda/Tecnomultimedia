//https://youtu.be/Zm1pMtmKFbA
PImage I3;
float r = 255, g = 255, b = 255;

void mouseClicked() {
    g = 100 + random(155);
    b = 100 + random(155);
}

void setup() {
    size(800, 400);
    noStroke();
    background(50, 0, 0);
    I3=loadImage("Ilusion 4.png");
}

void draw() {
    fill(0, 50, 0);
    rect(0, 0, height, height);
    r = map(mouseY, 0, height, 10, 255);
    if (keyPressed) {
        r = 255;
        g = 255;
        b = 255;
    }
    image (I3,0,0,400,400) ;
    effect();
    matrixEffect();
}

float nuevaVen(float ven, float da) {
    return ven / (abs(cos(da)) + abs(sin(da)));
}

void effect() {
    boolean isBlack = false;
    float angle = PI/2;
    float ven = height;
    float da =  -0.07;

    for (int i = 0; i < 41; i++) {
        if (isBlack) {
            fill(0);
            isBlack = false;
        } else {
            fill(r, g, b);
            isBlack = true;
        }
        pushMatrix();
            translate(3 * width/4, height/2);
            rotate(angle);
            rect(-ven/2, -ven/2, ven, ven);
            ven = nuevaVen(ven, da);
            angle += da;
        popMatrix();
    }
}
void matrixEffect() {
    float alpha = 0;
    int sW = 3, sH = 3;
    float W = height / sW, H = height / sH;
    float dalpha = 120 / (sW * sH);
    pushMatrix();
        translate(width / 2, 0);
        for (int x = 0; x < sW; x++) {
            for (int y = 0; y < sH; y++) {
                fill(0, alpha);
                rect(x * W, y * H, W, H);
                alpha += dalpha;
            }
        }
    popMatrix();
}

setup = function() {
    size(400, 400);
};

var answer = 1;


var getRandomAnswer = function() {
    return round(random(1, 5)); 
};

draw = function(){
    background(100, 100, 100);
    fill(0);
    ellipse(200, 200, 375, 375);
    fill(60, 0, 255);
    triangle(200, 104, 280, 280, 120, 280);
    fill(255);
    textSize(16);
    textAlign(CENTER, CENTER);
    
   
    if (answer == 1) {
        text("Yes!", 200, 200);
    } else if (answer == 2) {
        text("No.", 200, 200);
    } else if (answer == 3) {
        text("Maybe...", 200, 200);
    } else if (answer == 4) {
        text("Ask later.", 200, 200);
    } else {
        text("Definitely!", 200, 200);
    }
};


mouseClicked = function(){
    answer = getRandomAnswer();  
};


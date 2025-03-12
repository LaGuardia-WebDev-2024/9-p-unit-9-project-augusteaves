setup = function() {
    size(400, 400);
};

var answer = 1;
var textX = 200;
var textY = 200;
var bgColor = color(100, 100, 100); // Default background color

// Custom function to update the answer and randomize text position
var updateAnswer = function() {
    answer = round(random(1, 5)); 
    textX = random(100, 300);  // Random X position for text
    textY = random(100, 300);  // Random Y position for text
};

// Custom function to change the background color, but only under a condition
var changeBackgroundColor = function() {
    if (answer == 1 || answer == 3) {  
        // Changes the color only if answer is 1 or 3
        bgColor = color(random(50, 255), random(50, 255), random(50, 255)); 
    }
};

draw = function(){
    background(bgColor);
    fill(0);
    ellipse(200, 200, 375, 375);
    fill(60, 0, 255);
    triangle(200, 104, 280, 280, 120, 280);
    fill(255);
    textSize(16);
    textAlign(CENTER, CENTER);
    
    // Display response at a random position
    if (answer == 1) {
        text("Yes!", textX, textY);
    } else if (answer == 2) {
        text("No.", textX, textY);
    } else if (answer == 3) {
        text("Maybe...", textX, textY);
    } else if (answer == 4) {
        text("Ask later.", textX, textY);
    } else {
        text("Definitely!", textX, textY);
    }
};

// Mouse click function to update answer, text position, and background color
mouseClicked = function() {
    updateAnswer();
    changeBackgroundColor(); // Calls the function with logical operator condition
};

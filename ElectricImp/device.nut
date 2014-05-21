// configure the imp (best practice)
imp.configure("Vibe Api", [], []); 
 
// create a global array called vibe
vibeT <- hardware.pin2;
vibeL <- hardware.pin5;
vibeR <- hardware.pin7;
vibeB <- hardware.pin1

// configure led to be a digital output
vibeT.configure(DIGITAL_OUT);
vibeL.configure(DIGITAL_OUT);
vibeR.configure(DIGITAL_OUT);
vibeB.configure(DIGITAL_OUT);
 
// function to turn LED on or off
function setVibeT(vibeState) {
  vibeT.write(vibeState);
}

function setVibeL(vibeState) {
  vibeL.write(vibeState);
}

function setVibeR(vibeState) {
  vibeR.write(vibeState);
}

function setVibeB(vibeState) {
  vibeB.write(vibeState);
}
 
// register a handler for messages from the agent
agent.on("vibeT", setVibeT);
agent.on("vibeL", setVibeL);
agent.on("vibeR", setVibeR);
agent.on("vibeB", setVibeB);

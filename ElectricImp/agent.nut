function requestHandler(request, response) {
  try {
  
    foreach (key, value in request.query) {
      device.send("vibe" + key.tostring(), value.tointeger());
      server.log(key + " " + value);
    };
    
    response.header("Access-Control-Allow-Origin", "*");
    
    response.send(200, "OK");
    
  } catch (ex) {
    response.send(500, "Internal Server Error: " + ex);
  }
}
 
http.onrequest(requestHandler);

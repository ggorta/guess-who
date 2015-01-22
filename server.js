var express = require ('express')
var app = express();

app.get('/', function(req, res) {
  //on / serves a celeb json object.
var obj = { "results": {
  "profession": "writer",
  "known_for": ["prolificity", "genre-busting", "pseudonyms"],
  "gender": "male",
  "age": "67",
  "fact1": "married to a writer",
  "fact2": "often sets stories in fictional towns in Maine"
    }
  }
  res.json(obj);
});

app.get('/:name', function(req, res) {
  //on /CELEBNAME serves {correct: "NICE JOB!"}
  var name = req.params.name;
  if (name === "stephen_king"){
    ymsg = {correct: "NICE JOB!"}
    res.json(ymsg);
  }
    else {
      nmsg = {incorrect: "hmm, try again"}
    res.json(nmsg);
    }

});

//app.get('/', function(req, res) {
//on /:ANYTHINGELSE serves {msg: "hmm, try again"}

//});

app.listen(3000);
//host this on your DO box at port 3000.

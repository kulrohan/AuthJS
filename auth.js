const { Pool, Client } = require('pg');
var fs = require('fs');

var in_json = fs.readFileSync('input.json');
console.log('input file read');

var input = JSON.parse(in_json);

//set up output file
fs.truncate('output.json', 0, function(err){if (err) throw err;});


const pool = new Pool({

  user: input.username,
  host: input.host,
  database: input.database,
  password: input.password,
  port: input.port,

});

console.log('connected to database ' + input.database);
//if credentials are incorrect, the user is not logged on to the database.  The user will not be able to execute any SQL statements.

pool.query(input.sql, (err, res) => {
  if (err){
    var output = 'ERROR: Either the SQL you wish to execute is invalid or not permitted for ' + input.username;
    console.log(output);
    //write output to output.json
    var out_obj = {"Output Response":output};
    var out_json = JSON.stringify(out_obj);
    fs.appendFile('output.json', out_json, function(err){if (err) throw err;});
  };

  if (res) {
    var output = res.rows;
    console.log(output);
    //write output to output.json
    var out_obj = {"Output Response":output};
    var out_json = JSON.stringify(out_obj);
    fs.appendFile('output.json', out_json, function(err){if (err) throw err;});
  };

});


pool.end()

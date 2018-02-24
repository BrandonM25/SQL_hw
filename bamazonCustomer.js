var mysql = require("mysql");
var inquirer = require("inquirer");
// Creating connection to database
var connection = mysql.createConnection({
    host: "localhost",
    port: "3306",

    user: "root",
    password: "root",
    database: "bamazon_db"
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("Connected as id " + connection.threadId + "\n");
    queryList();
});

//function for displaying the database
function queryList() {
    connection.query("SELECT * FROM products", function (err, res) {
        for (var i = 0; i < res.length; i++) {
            console.log(res[i].item_id + " | " + res[i].product_name + " | " + res[i].department_name + " | " + res[i].price);
        }
        console.log("-----------------------------------");
    });
}

//function to handle buying a product
function buy() {
    inquirer
        .prompt([
            {
                name: 'item',
                type: 'input',
                message: 'What is the ID for the item you wish to buy?'
            },
            {
                name: 'quantity',
                type: 'input',
                message: 'How many units of the product would you like to buy?'
            },
        ])
        .then(function (answer) {
            if (answer.quantity.toUpperCase()>) {
                console.log('Insufficient quantity!');
            } else {
                //update database and show customer the total cost of their purchase
            }
        });
}
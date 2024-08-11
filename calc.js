var currentNumber = "";
var previousNumber = "";
var operator = "";

function appendNumber(number) {
    currentNumber += number;
    document.getElementById("result").value = currentNumber;
}

function appendOperator(op) {
    previousNumber = currentNumber;
    currentNumber = "";
    operator = op;
}

function clearScreen() {
    currentNumber = "";
    previousNumber = "";
    operator = "";
    document.getElementById("result").value = "";
}

function calculate() {
    var num1 = parseFloat(previousNumber);
    var num2 = parseFloat(currentNumber);
    var result = "";

    if (operator === "+") {
        result = num1 + num2;
    } else if (operator === "-") {
        result = num1 - num2;
    } else if (operator === "*") {
        result = num1 * num2;
    } else if (operator === "/") {
        if (num2 === 0) {
            result = "Error: Division by zero";
        } else {
            result = num1 / num2;
        }
    }

    currentNumber = result;
    document.getElementById("result").value = currentNumber;
}

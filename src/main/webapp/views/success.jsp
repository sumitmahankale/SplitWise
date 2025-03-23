<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expense Summary</title>
    <style>
       
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff; 
            color: #000080;
            margin: 20px;
        }

        h1 {
            color: #4682b4; 
            text-align: center;
        }

        .container {
            width: 50%;
            margin: 0 auto;
            background-color: #ffffff; 
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border: 2px solid #87cefa;
        }

        label {
            display: block;
            margin: 10px 0;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin: 10px 0;
            border: 1px solid #87ceeb;
            border-radius: 5px;
        }

        button {
            background-color: #4682b4;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #5a9bd6; 
        }

        #resultContainer {
            margin-top: 20px;
            font-size: 18px;
            color: #00008b;
            font-weight: bold;
            display: none;
        }
    </style>
    <script>
        function splitExpense() {

            const totalAmount = parseFloat("${totalAmount}");
            console.log("Total Amount:", totalAmount);

            
            const numberOfPeople = parseInt(document.getElementById("ex").value);
            console.log("Number of People:", numberOfPeople); 

            if (numberOfPeople <= 0 || isNaN(numberOfPeople)) {
                alert("Please enter a valid number of people greater than zero.");
                document.getElementById("resultField").value = "Invalid input. Please try again.";
                return;
            }

            const splitAmount = (totalAmount / numberOfPeople).toFixed(2);
            console.log("Split Amount:", splitAmount); 

      
            document.getElementById("resultField").value = splitAmount;

           
            document.getElementById("resultContainer").style.display = "block";
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>Expense Summary</h1>
        
        <!-- Display the total amount received from the controller -->
        <p><strong>Total Expense Amount:</strong> ${totalAmount}</p>
        
        <!-- Input field to get the number of people -->
        <label for="ex">Enter Number Of People:</label>
        <input type="text" id="ex" placeholder="Enter number of people">

        <!-- Button to trigger the calculation -->
        <button onclick="splitExpense()">Calculate</button>
         <span><a href="home">Back</a> </span>

        <!-- Hidden result container that will be displayed after calculation -->
        <div id="resultContainer">
            <label for="resultField">Result:</label>
            <input type="text" id="resultField" readonly placeholder="Calculated result will appear here">
            
        </div>
    </div>
</body>
</html>

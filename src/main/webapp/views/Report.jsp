<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expense Summary</title>
    <style>
        /* Styling for the page */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff; /* Light blue background */
            color: #000080; /* Navy blue text color */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        .container {
            width: 50%;
            background-color: #ffffff; /* White background for content box */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border: 2px solid #87cefa; /* Light sky blue border */
        }

        h1 {
            color: #4682b4; /* Steel blue */
            text-align: center;
        }

        button {
            background-color: #4682b4; /* Steel blue */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
            display: inline-block;
            width: auto;
        }
		a{
		color:darkblue;
		}
        button:hover {
            background-color: #5a9bd6; /* Slightly lighter blue on hover */
        }

        p {
            font-size: 18px;
            color: #00008b; /* Dark blue text color */
        }

        #result {
            margin-top: 20px;
            font-size: 18px;
            color: #00008b; /* Dark blue for result text */
            font-weight: bold;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Expense Summary</h1>
        
        <!-- Button to trigger CSV download -->
        <button onclick="downloadExpenses()">Download Expenses as CSV</button><br><br>
			 <span><a href="home">Back</a> </span>
        <script>
            function downloadExpenses() {
                // Trigger the download by redirecting the user to the /download-expenses endpoint
                window.location.href = "/download-expenses";
            }
        </script>
    </div>
</body>
</html>

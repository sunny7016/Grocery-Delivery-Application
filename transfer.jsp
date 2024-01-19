<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SEVA BANK - Transfer Amount</title>
    <style>
        /* BASIC */
        html {
            background: url('bank.jpg') no-repeat center center fixed;
            background-size: cover;
            height: 100%;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: black;
            color: white;
            text-align: center;
            padding: 1em 0;
            border-bottom: 4px solid #001a33;
        }

        footer {
            background-color: black;
            color: white;
            text-align: center;
            padding: 1em 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        h1, h2 {
            text-align: center;
            color: white;
        }

        .wrapper {
            display: flex;
            align-items: center;
            flex-direction: column;
            justify-content: center;
            width: 100%;
            min-height: 100%;
            padding: 20px;
        }

        .transfer-container {
            border-radius: 15px;
            overflow: hidden;
            background: rgba(0, 26, 51, 0.8); /* Darker background color with transparency */
            padding: 30px;
            width: 90%;
            max-width: 600px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            color: white;
        }

        label {
            display: block;
            margin: 10px 0;
            color: white;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            box-sizing: border-box;
            border: none;
            border-bottom: 2px solid white;
            background-color: transparent;
            color: white;
        }

        input:focus {
            background-color: #001a33;
            border-bottom: 2px solid #ff6600;
        }

        button {
            background-color:#2091fa;
            border: none;
            color: white;
            padding: 15px 80px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            text-transform: uppercase;
            font-size: 13px;
            box-shadow: 0 10px 30px 0 rgba(0, 80, 158, 0.4);
            border-radius: 5px;
            margin: 5px 20px 40px 20px;
            transition: all 0.3s ease-in-out;
            cursor: pointer;
        }

        button:hover {
            background-color: rgb(3, 11, 236);
        }

        button:active {
            transform: scale(0.95);
        }
    </style>
</head>

<body>
    <header>
        <h1>SEVA BANK</h1>
    </header>

    <div class="wrapper">
        <div class="transfer-container">
            <h2>Transfer Amount</h2>
            <form id="transferForm" method="post" action="TransferServlet">
                <label for="senderName">Sender's Name:</label>
                <input type="text" id="senderName" name="senderName" placeholder="Enter sender's name" required>

                <label for="senderAccountNumber">Sender's Account Number:</label>
                <input type="text" id="senderAccountNumber" name="senderAccountNumber" placeholder="Enter sender's account number" required>
                 <label for="receiverUsername">Receiver's name :</label>
                <input type="text" id="Receiver's Username" name="receiverUsername" placeholder="Enter Receiver's Username " required>
                <label for="recipientAccountNumber">Recipient's Account Number:</label>
                <input type="text" id="recipientAccountNumber" name="recipientAccountNumber" placeholder="Enter recipient's account number" required>

                <label for="transferAmount">Transfer Amount:</label>
                <input type="text" id="transferAmount" name="transferAmount" placeholder="Enter transfer amount" required>

                <button type="submit">Transfer</button>
            </form>
        </div>
    </div>

    <footer>
        &copy; 2023 SEVA BANK. All rights reserved.
    </footer>

    <script>
        function validateTransferForm() {
            // Here, you can implement validation logic.
            // For simplicity, returning true for now.
            return true;
        }
    </script>
</body>

</html>
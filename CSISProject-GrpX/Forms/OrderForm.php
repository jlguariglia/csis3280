<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Order Insert</title>
    <style>
      input[type=text], select {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
      }

      h1 {
        text-align: center;
      }
      html, body {
        height: 100%;
      }

      html {
          display: table;
          margin: auto;
      }

      body {
          display: table-cell;
          vertical-align: middle;
      }

      input[type=submit] {
          width: 49%;
          background-color: #4CAF50;
          color: white;
          padding: 14px 20px;
          margin: 8px 0;
          border: none;
          border-radius: 4px;
          cursor: pointer;
      }

      input[type=submit]:hover {
          background-color: #45a049;
      }
      input[type=reset]:hover {
          background-color: #45a049;
      }
      input[type=reset] {
          width: 49%;
          background-color: #4CAF50;
          color: white;
          padding: 14px 20px;
          margin: 8px 0;
          border: none;
          border-radius: 4px;
          cursor: pointer;
      }

      div {
          width: 100%;
          border-radius: 5px;
          background-color: #f2f2f2;
          padding: 20px;
      }
      </style>
  </head>
  <body>

    <h1>Insert Order</h1>
<div>
    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
      <label for="ClientName">Name</label></br>
      <input type="text" id="ClientName" name="ClientName" value=""></br>
      <label for="ClientDOB">Date of Birth</label></br>
      <input type="text" id="ClientDOB" name="ClientDOB" value=""></br>
      <label for="ClientPhoneNo">Quantity</label></br>
      <input type="text" id="ClientPhoneNo" name="ClientPhoneNo" value=""></br>
      <input type="submit" name="submit" value="Submit">
      <input type="reset" name="reset" value="Reset"></br>
    </form>
</div>

    <?php
      require "../mysql/LSWareHouseDB_connection.php";
      if (isset($_POST['submit'])) {
        $clientName = $_POST['ClientName'];
        $clientDOB = $_POST['ClientDOB'];
        $clientPhoneNo = $_POST['ClientPhoneNo'];
        $sql = "INSERT INTO Inventory(InventoryID, ClientName, ClientDOB, ClientPhoneNo)
            VALUES(default, '$clientName', '$clientDOB', '$clientPhoneNo')";
        if ($conn->query($sql) === TRUE) {
          echo "New record created successfully";
        } else {
          echo "Error: " . $sql . "<br>" . $conn->error;
        }
      }
      $conn->close();
    ?>

  </body>
</html>

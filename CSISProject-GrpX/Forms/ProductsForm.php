<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Products Insert</title>
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

    <h1>Insert Product</h1>
<div>
    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
      <label for="ProductName">Name</label></br>
      <input type="text" id="ProductName" name="ProductName" value=""></br>
      <label for="ProductCategory">Category</label></br>
      <select class="ProductCategory" name="ProductCategory">
        <option value="Furniture">Furniture</option>
        <option value="Appliance">Appliance</option>
        <option value="Groceries">Groceries</option>
      </select>
      <label for="ProductReferenceNo">Reference Number</label></br>
      <input type="text" id="ProductReferenceNo" name="ProductReferenceNo" value=""></br>
      <label for="ProductDimensions">Dimensions</label></br>
      <input type="text" id="ProductDimensions" name="ProductDimensions" value=""></br>
      <label for="ProductPrice">Aisle</label></br>
      <select name="AisleID">
        <?php
          $sql1 = mysqli_query($conn, "SELECT AisleID FROM Aisle");
          while ($row = $sql1->fetch_assoc()){
            echo "<option value=\"1\">" . $row['AisleID'] . "</option>";
          }
        ?>
      </select>
      <label for="ProductPrice">Price</label></br>
      <input type="text" id="ProductPrice" name="ProductPrice" value=""></br>

      <input type="submit" name="submit" value="Submit">
      <input type="reset" name="reset" value="Reset"></br>
    </form>
</div>

    <?php
      require "../mysql/LSWareHouseDB_connection.php";
      if (isset($_POST['submit'])) {
        $productName = $_POST['ProductName'];
        $productCategory = $_POST['ProductCategory'];
        $productReferenceNo = $_POST['ProductReferenceNo'];
        $productDimensions = $_POST['ProductDimensions'];
        $productPrice = $_POST['ProductPrice'];
        $aisleID = $_POST['AisleID'];
        $sql = "INSERT INTO Product(ProductID, ProductName, ProductCategory, ProductReferenceNo, ProductDimensions, ProductPrice, AisleID)
            VALUES(default, '$productName', '$productCategory', '$productReferenceNo', '$productDimensions', $productPrice, $aisleID)";
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

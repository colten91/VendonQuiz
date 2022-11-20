<!DOCTYPE html>
<html lang="en">
<? include "DB.php";
if(isset($_POST['start'])){
  $username=$_POST['username'];
  $quiz=$_POST['quiz'];
  $sql="INSERT INTO quiz_user(username) VALUES ('$username')";
  $result = $conn->query($sql);
}
?>

<head>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <title>start quiz!</title>
</head>

<body>
<form method="POST"><?
  $sql = "SELECT * FROM quiz_category";
  $result = $conn->query($sql);
  ?>
  <div class="startbox">

    <h1 class="quiztitle">Quiz Test</h1>
    <label name="username"class="usernamelable"rqu>username</label>
    <input class="input" name="username"required>
    <label class="usernamelable">quiz:</label>
    <select class="input" name="quiz">
      <?php
      while ($row = $result->fetch_assoc()) {

        echo "<option value='" . $row['ID'] . "'>" . $row['category'] . "</option>";
      }
      ?>


    </select>
    <button name="start">submit name</button>

    <a href="quiz.php?id=1" id="myButton">start!</a>
    </form>

    </div>

</body>
<!-- <script>
       
        function href(productId){
            window.location.href = "http://jhonnysins.atwebpages.com/productpage/update.php?id="+productId;
        }
    </script> -->

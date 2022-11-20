<!DOCTYPE html>
<html lang="en">
<? include "DB.php"; ?>

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="stylequiz.css">
    <title>start quiz!</title>
</head>
<body>
<?
$sqlname="SELECT * FROM Table ORDER BY ID DESC LIMIT 1";
$result = $conn->query($sqlname);
echo $result;

?>
<form action="authenticate.php">
<?$questions = "SELECT * FROM quiz_questions WHERE category_ID=1";
    $results = $conn->query($questions);
    while ($row = $results->fetch_assoc()) {
        ?><div>
     
        <h1 class='nosaukums'><? echo $row['question']?></h1>
        <label class="container"><?echo $row['answer1']?>
        <input type="radio" name="0">
        <span class="checkmark"></span>
      </label>
      <label class="container"><?echo $row['answer2']?>
        <input type="radio" name="1">
        <span class="checkmark"></span>
      </label>
      <label class="container"><?echo $row['answer3']?>
        <input type="radio" name="2">
        <span class="checkmark"></span>
      </label>
      <label class="container"><?echo $row['answer4']?>
        <input type="radio" name="3">
        <span class="checkmark"></span>
      </label>
   

      </div>
   <? }?>
<div>
   <button>submit</button>
    </form>
    </div>
</body>

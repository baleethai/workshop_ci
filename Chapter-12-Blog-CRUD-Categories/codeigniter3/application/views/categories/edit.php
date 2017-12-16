<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Edit Category</title>
</head>
<body>
    <h1>Edit Category</h1>
    <?php echo form_open('category/edit/' . $category->id); ?> 
    <p>Title : <input type="text" name="name" value="<?php echo $category->name; ?>"></p>
    <p><input type="submit" value="Submit"></p>
    <?php echo form_close(); ?> 
</body>
</html>
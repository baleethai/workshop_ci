<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Create Category</title>
</head>
<body>
    <h1>Create Category</h1>
    <?php echo form_open('category/create'); ?> 
    <p>Name : <input type="text" name="name" value=""></p>
    <p><input type="submit" value="Submit"></p>
    <?php echo form_close(); ?>
</body>
</html>
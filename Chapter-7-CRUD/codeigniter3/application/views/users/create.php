<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Create User</title>
</head>
<body>
    <h1>Create User</h1>

    <form action="<?php echo base_url(); ?>index.php/user/create" method="POST"> 
        <p>Name : <input type="text" name="name"></p>
        <p>Email : <input type="email" name="email"></p>
        <p>Password : <input type="password" name="password"></p>
        <p><input type="submit" value="Submit"></p>
    </form>
</body>
</html>
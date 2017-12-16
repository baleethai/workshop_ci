<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
</head>
<body>
    <h1>Login</h1>
    <?php echo form_open('login'); ?>
        <p>Email : <input type="email" name="email" value=""></p>
        <p>Password : <input type="password" name="password" value=""></p>
        <p><input type="submit" value="Submit"></p>
    <?php echo form_close(); ?>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Edit User</title>
</head>
<body>
    <h1>Edit User</h1>

    <form action="<?php echo base_url(); ?>index.php/user/edit/<?php echo $user->id;?>" method="POST"> 
        <p>Name : <input type="text" name="name" value="<?php echo $user->name; ?>"></p>
        <p>Email : <input type="email" name="email" value="<?php echo $user->email; ?>"></p>
        <p><input type="submit" value="Submit"></p>
    </form>
</body>
</html>
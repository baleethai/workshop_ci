<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Users</title>
    <link href="<?php echo base_url('assets/css/bootstrap.min.css'); ?>">
</head>
<body>
    <h1>Users</h1>
    <p><a href="./user/create">Create</a></p>
    <table border="1" width="500" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Action</th>
        </tr>
        <?php foreach($users as $user){ ?>
        <tr>
            <td><?php echo $user->id; ?></td>
            <td><?php echo $user->name; ?></td>
            <td><?php echo $user->email; ?></td>
            <td>
                <a href="./user/edit/<?php echo $user->id; ?>">Edit</a> |
                <a href="./user/delete/<?php echo $user->id; ?>">Delete</a>
            </td>
        </tr>
        <?php } ?>
    </table>


    <script src="<?php echo base_url('assets/js/jquery-3.2.1.slim.min.js'); ?>"></script>
    <script src="<?php echo base_url('assets/js/popper-1.12.3.js'); ?>"></script>
    <script src="<?php echo base_url('assets/js/bootstrap.min.js'); ?>"></script>

</body>
</html>
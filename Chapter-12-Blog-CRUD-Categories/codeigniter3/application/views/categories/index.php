<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Categories</title>
</head>
<body>
    <h1><?php echo $title; ?></h1>
    <p><a href="<?php echo base_url();?>index.php/category/create">Create Category</a></p>
    <table class="table" width="600" border="1">
        <tr>
            <th>Title</th>
            <th>Created</th>
            <th></th>
        </tr>
        <tr>
        <?php foreach($categories as $category): ?>
            <td><?php echo $category->name; ?></td>
            <td><?php echo $category->created; ?></td>
            <td>
                <a href="<?php echo base_url(); ?>index.php/category/edit/<?php echo $category->id;?>">Edit</a> |
                <a href="<?php echo base_url(); ?>index.php/category/delete/<?php echo $category->id;?>">Delete</a>
            </td>
        </tr>
        <?php endforeach; ?>
    </table>
</body>
</html>
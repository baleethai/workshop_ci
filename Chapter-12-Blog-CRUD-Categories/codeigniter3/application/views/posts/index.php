<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Posts</title>
</head>
<body>
    <h1><?php echo $title; ?></h1>
    <p><a href="<?php echo base_url();?>index.php/post/create">Create Blog</a></p>
    <table class="table" width="600" border="1">
        <tr>
            <th>Image</th>
            <th>Title</th>
            <th>Status</th>
            <th>Created</th>
            <th></th>
        </tr>
        <tr>
        <?php foreach($posts as $post): ?>
            <td><img src="<?php echo base_url().'uploads/' . $post->image; ?>" width="100"></td>
            <td><?php echo $post->title; ?></td>
            <td><?php echo $post->status; ?></td>
            <td><?php echo $post->created; ?></td>
            <td>
                <a href="<?php echo base_url(); ?>index.php/post/edit/<?php echo $post->id;?>">Edit</a> |
                <a href="<?php echo base_url(); ?>index.php/post/delete/<?php echo $post->id;?>">Delete</a>
            </td>
        </tr>
        <?php endforeach; ?>
    </table>
</body>
</html>
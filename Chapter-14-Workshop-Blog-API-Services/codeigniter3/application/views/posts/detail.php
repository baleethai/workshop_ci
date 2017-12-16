<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Detail Post</title>
</head>
<body>
    <h1><?php echo $post->title; ?></h1>
    <p><?php echo $post->description; ?></p>

    <p>Comment</p>
    <?php foreach($comments as $comment) { ?>
    <p><?php echo $comment->message; ?> : <?php echo $comment->name; ?></p>
    <?php } ?>

    <?php echo form_open('comment/create'); ?> 
        <input type="hidden" name="post_id" value="<?php echo $post->id; ?>">
        <p><input type="text" name="name"></p>
        <p><textarea rows="4" name="message"></textarea></p>
        <p><input type="submit" value="Submit"></p>
    <?php echo form_close(); ?>
    
    <p><a href="<?php echo base_url(); ?>index.php/post">Back</a></p>
</body>
</html>
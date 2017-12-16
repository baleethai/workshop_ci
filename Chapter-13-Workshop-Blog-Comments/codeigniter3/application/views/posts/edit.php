<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Edit Post</title>
</head>
<body>
    <h1>Edit Post</h1>
    <?php echo form_open_multipart('post/edit/' . $post->id); ?> 
    <p>Title : <input type="text" name="title" value="<?php echo $post->title; ?>"></p>
    <p>Description : <textarea rows="4" name="description"><?php echo $post->description; ?></textarea></p>
    <p>status : 
        <select name="status">
            <option value="open" <?php if ($post->status == 'open'){ ?>selected="selected" <?php } ?>>Open</option>
            <option value="draft" <?php if ($post->status == 'draft'){ ?>selected="selected" <?php } ?>>Draft</option>
        </select>
    </p>
    <img src="<?php echo base_url(); ?>uploads/<?php echo $post->image; ?>" width="600">
    <p>Image : <input type="file" name="userfile"></p>
    <p><input type="submit" value="Submit"></p>
    <?php echo form_close(); ?>

    <script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
    <script>tinymce.init({ selector:'textarea' });</script>    
</body>
</html>
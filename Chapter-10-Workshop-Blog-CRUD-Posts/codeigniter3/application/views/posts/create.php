<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Create Blog</title>
</head>
<body>
    <h1>Create Blog</h1>
    <?php echo form_open_multipart('post/create'); ?> 
    <p>Title : <input type="text" name="title" value=""></p>
    <p>Description : <textarea rows="4" name="description"></textarea></p>
    <p>status : 
        <select name="status">
            <option value="open">Open</option>
            <option value="draft">Draft</option>
        </select>
    </p>
    <p>Image : <input type="file" name="userfile"></p>
    <p><input type="submit" value="Submit"></p>
    <?php echo form_close(); ?>
</body>
</html>
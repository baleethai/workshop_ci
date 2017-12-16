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
    <ul>
        <?php foreach($posts as $post): ?>
        <li>
            <div>
                <img src="<?php echo $post->image; ?>" width="50">
                <?php echo $post->title; ?>
            </div>
            
        </li>
        <?php endforeach; ?>
    </ul>
</body>
</html>
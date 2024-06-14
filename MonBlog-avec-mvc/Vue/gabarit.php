<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $titre ?></title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="Contenu/<?= $style = isset($stl)?$stl:"style" ?>">
</head>
<body>
    <header>
      <center>
        <h1 id="titreBlog" style="color:blue; text-decoration: underline;">BLOG</h1>
        <h1 class="text-center">Je vous souhaite la bienvenue sur ce modeste blog.</h1>
        </center>
    </header>

    <div class="container mt-5">
        <?= $contenu ?>
      </div>
      <footer id="piedBlog">
        <center>
        Blog réalisé avec PHP, HTML5, CSS et VUE JS.
        </center>
      </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="Contenu/app.js"></script>
</body>
</html>
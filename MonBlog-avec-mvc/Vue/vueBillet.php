
<div class="card mt-4">
            <div class="card-header">
                <h2 id="articleTitle"><?= $billet['titre'] ?></h2>
                <p class="intro"><?= $billet['theme'] ?>.</p>
            </div>
            <div class="card-body">
            <div class="placeHolder_img" style="background-image: url('https://source.unsplash.com/600x400/?<?= $billet['theme'] ?>');"></div>
                <p id="articleContent"><?= $billet['contenu'] ?></p>
                <p> <time><?= $billet['date'] ?></time>. </p>
            </div>
            <div class="card-footer text-center">
                <button id="likeButton" class="btn btn-primary mr-3">Like <span id="likeCount">0</span></button>
            </div>
        </div>
        <div id="commentsSection" class="mt-4">
            <h3>Commentaires</h3>
            <ul id="commentsList" class="list-group">
                <?php foreach ($commentaires as $commentaire): ?>
                    <li>
                        <p><?= $commentaire['auteur'] ?> dit :</p>
                        <p><?= $commentaire['contenu'] ?></p>
                    </li>
                <?php endforeach; ?>
            </ul>
            <div class="mt-4">
        <form method="post" action="index.php?action=commenter">
        <input id="commentAuthor" class="form-control" type="text" name="auteur" placeholder="Votre nom">
        <textarea id="commentText" class="form-control mt-2" rows="3" name="contenu" placeholder="Ajouter un commentaire"></textarea>
        <input type="hidden" name="id" value="<?= $billet['id'] ?>" />
        <button id="submitComment" class="btn btn-secondary mt-3">Commenter</button>
        </form>
    </div>
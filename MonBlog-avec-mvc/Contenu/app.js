// document.addEventListener('DOMContentLoaded', function() {
//     let likeCount = 0;

//     document.getElementById('likeButton').addEventListener('click', function() {
//         likeCount++;
//         document.getElementById('likeCount').textContent = likeCount;
//     });

//     document.getElementById('submitComment').addEventListener('click', function() {
//         const commentAuthor = document.getElementById('commentAuthor').value;
//         const commentText = document.getElementById('commentText').value;
//         if (commentAuthor && commentText) {
//             const commentList = document.getElementById('commentsList');
//             const newComment = document.createElement('li');
//             newComment.innerHTML = `<strong>${commentAuthor}</strong>: ${commentText}`;
//             newComment.className = 'list-group-item';
//             commentList.appendChild(newComment);
//             document.getElementById('commentAuthor').value = '';
//             document.getElementById('commentText').value = '';
//         }
//     });
// });




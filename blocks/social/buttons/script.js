document.addEventListener('DOMContentLoaded', function() {
    const pageUrl = encodeURIComponent(window.location.href);
    const pageTitle = encodeURIComponent(document.title);

    const twitterShare = document.querySelector('.share-twitter');
    if (twitterShare) {
        twitterShare.href = `https://twitter.com/intent/tweet?url=${pageUrl}&text=${pageTitle}`;
        twitterShare.target = '_blank';
    }

    const facebookShare = document.querySelector('.share-facebook');
    if (facebookShare) {
        facebookShare.href = `https://www.facebook.com/sharer/sharer.php?u=${pageUrl}`;
        facebookShare.target = '_blank';
    }
});

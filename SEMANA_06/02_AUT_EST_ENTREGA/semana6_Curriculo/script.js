$(document).ready(function () {
    $('#btnMostrarImagem').click(function () {
        $('#imagem').toggle();
    });

    $('#btnGit').click(function () {
        var url = 'https://github.com/Edustn';
        window.open(url, '_blank');
    });

});
var getDBResDiv = "#getDB";

$(document).ready(function () {
    $('#btnMostrarImagem').click(function () {
        $('#imagem').toggle();
    });

    $('#btnGit').click(function () {
        var url = 'https://github.com/Edustn';
        window.open(url, '_blank');
    });



});

function TestGET() {
    var url = "/formacao";
    var resposta;

    var xhttp = new XMLHttpRequest();
    xhttp.open("GET", url, false);
    xhttp.send();

    resposta = JSON.parse(xhttp.responseText);
    $(getDBResDiv).append("<br /><br />" + JSON.stringify(resposta));

}
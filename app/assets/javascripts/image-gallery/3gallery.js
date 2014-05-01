$(function () {
    'use strict';
    var strVar="";
    strVar += "<div id=\"blueimp-gallery\" class=\"blueimp-gallery\">";
    strVar += "    <div class=\"slides\"><\/div>";
    strVar += "    <h3 class=\"title\"><\/h3>";
    strVar += "    <a class=\"prev\">‹<\/a>";
    strVar += "    <a class=\"next\">›<\/a>";
    strVar += "    <a class=\"close\">×<\/a>";
    strVar += "    <a class=\"play-pause\"><\/a>";
    strVar += "    <ol class=\"indicator\"><\/ol>";
    strVar += "    <div class=\"modal fade\">";
    strVar += "        <div class=\"modal-dialog\">";
    strVar += "            <div class=\"modal-content\">";
    strVar += "                <div class=\"modal-header\">";
    strVar += "                    <button type=\"button\" class=\"close\" aria-hidden=\"true\">&times;<\/button>";
    strVar += "                    <h4 class=\"modal-title\"><\/h4>";
    strVar += "                <\/div>";
    strVar += "                <div class=\"modal-body next\"><\/div>";
    strVar += "                <div class=\"modal-footer\">";
    strVar += "                    <button type=\"button\" class=\"btn btn-default pull-left prev\">";
    strVar += "                        <i class=\"glyphicon glyphicon-chevron-left\"><\/i>";
    strVar += "                        Previous";
    strVar += "                    <\/button>";
    strVar += "                    <button type=\"button\" class=\"btn btn-primary next\">";
    strVar += "                        Next";
    strVar += "                        <i class=\"glyphicon glyphicon-chevron-right\"><\/i>";
    strVar += "                    <\/button>";
    strVar += "                <\/div>";
    strVar += "            <\/div>";
    strVar += "        <\/div>";
    strVar += "    <\/div>";
    strVar += "<\/div>";

    var new_modal = $(strVar).clone();
    new_modal.appendTo('body');
    
    $('#borderless-checkbox').on('change', function () {
        var borderless = $(this).is(':checked');
        $('#blueimp-gallery').data('useBootstrapModal', !borderless);
        $('#blueimp-gallery').toggleClass('blueimp-gallery-controls', borderless);
    });

    $('#fullscreen-checkbox').on('change', function () {
        $('#blueimp-gallery').data('fullScreen', $(this).is(':checked'));
    });

    $('#image-gallery-button').on('click', function (event) {
        event.preventDefault();
        blueimp.Gallery($('#links a'), $('#blueimp-gallery').data());
    });
});

$(document).on 'ready page:load', ->
  "use strict"
  strVar = ""
  strVar += "<div id=\"blueimp-gallery\" class=\"blueimp-gallery\">"
  strVar += "    <div class=\"slides\"></div>"
  strVar += "    <h3 class=\"title\"></h3>"
  strVar += "    <a class=\"prev\">‹</a>"
  strVar += "    <a class=\"next\">›</a>"
  strVar += "    <a class=\"close\">×</a>"
  strVar += "    <a class=\"play-pause\"></a>"
  strVar += "    <ol class=\"indicator\"></ol>"
  strVar += "    <div class=\"modal fade\">"
  strVar += "        <div class=\"modal-dialog\">"
  strVar += "            <div class=\"modal-content\">"
  strVar += "                <div class=\"modal-header\">"
  strVar += "                    <button type=\"button\" class=\"close\" aria-hidden=\"true\">&times;</button>"
  strVar += "                    <h4 class=\"modal-title\"></h4>"
  strVar += "                </div>"
  strVar += "                <div class=\"modal-body next\"></div>"
  strVar += "                <div class=\"modal-footer\">"
  strVar += "                    <button type=\"button\" class=\"btn btn-default pull-left prev\">"
  strVar += "                        <i class=\"glyphicon glyphicon-chevron-left\"></i>"
  strVar += "                        Previous"
  strVar += "                    </button>"
  strVar += "                    <button type=\"button\" class=\"btn btn-primary next\">"
  strVar += "                        Next"
  strVar += "                        <i class=\"glyphicon glyphicon-chevron-right\"></i>"
  strVar += "                    </button>"
  strVar += "                </div>"
  strVar += "            </div>"
  strVar += "        </div>"
  strVar += "    </div>"
  strVar += "</div>"
  new_modal = $(strVar).clone()
  new_modal.appendTo "body"

  $("#borderless-checkbox").exists ->
    $(this).on "change", ->
      borderless = $(this).is(":checked")
      $("#blueimp-gallery").data "useBootstrapModal", not borderless
      $("#blueimp-gallery").toggleClass "blueimp-gallery-controls", borderless

  $("#fullscreen-checkbox").exists ->
    $(this).on "change", ->
      $("#blueimp-gallery").data "fullScreen", $(this).is(":checked")

  $("#image-gallery-button").exists ->
    $(this).on "click", (event) ->
      event.preventDefault()
      blueimp.Gallery $("#links a"), $("#blueimp-gallery").data()
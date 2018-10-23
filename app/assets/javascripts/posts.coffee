# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

sendFile = (file, toSummernote) ->
  data = new FormData
  data.append 'content_image[name]', file
  $.ajax
    data: data
    type: 'POST'
    url: '/ajax_upload_content_image'
    cache: false
    contentType: false
    processData: false
    success: (data) ->
      img = document.createElement('IMG')
      img.src = data.url
      console.log data
      img.setAttribute('id', "sn-image-#{data.upload_id}")
      toSummernote.summernote 'insertNode', img

deleteFile = (file_id) ->
  $.ajax
    type: 'DELETE'
    url: "/uploads/#{file_id}"
    cache: false
    contentType: false
    processData: false

$(document).on 'turbolinks:load', ->
  $('[data-provider="summernote"]').each ->
    $(this).summernote
      lang: 'ko-KR'
      height: 400
      callbacks:
        onImageUpload: (files) ->
          sendFile files[0], $(this)
        onMediaDelete: (target, editor, editable) ->
          upload_id = target[0].id.split('-').slice(-1)[0]
          console.log upload_id
          if !!upload_id
            deleteFile upload_id
          target.remove()
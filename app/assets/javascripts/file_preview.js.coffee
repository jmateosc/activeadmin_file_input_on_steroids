root = exports ? this

root.delay = (ms, func) -> setTimeout func, ms

$ ->
  $('.image-preview').prev().change ->
    readURL this, $(this).next()

  $('.button.has_many_add').click ->
    $this = $(this)
    root.delay 10, ->
      $this.prev().find('.image-preview').prev().change ->
        readURL this, $(this).next()


readURL = (input, elem) ->
  if input.files && input.files[0]
    reader = new FileReader()
    reader.onload = (e) ->
      elem.prop 'src' : e.target.result

    reader.readAsDataURL input.files[0]

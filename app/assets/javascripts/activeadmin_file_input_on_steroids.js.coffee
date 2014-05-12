root = exports ? this

root.delay = (ms, func) -> setTimeout func, ms

$ ->
  $('.image-preview').prev().change ->
    readURL this, $(this).next()

  has_many_click $('.button.has_many_add')

has_many_click = (elems) ->
  elems.click ->
    $this = $(this)
    root.delay 10, ->
      $this.prev().find('.image-preview').prev().change ->
        readURL this, $(this).next()
      has_many_click $this.find('.button.has_many_add')


readURL = (input, elem) ->
  if input.files && input.files[0]
    reader = new FileReader()
    reader.onload = (e) ->
      elem.prop 'src' : e.target.result

    reader.readAsDataURL input.files[0]

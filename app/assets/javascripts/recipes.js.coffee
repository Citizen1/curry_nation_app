$ ->
 $('input[name=difficulty_level]').change ->
    path = '/recipes'
    url = path + '?difficulty_level=' + $(this).val()
    window.location.replace url
    return
  return






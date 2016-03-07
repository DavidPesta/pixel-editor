module.exports = (action, editor) ->
  {hotkey, icon, method, name} = action

  perform: ->
    if typeof method is "function"
      method
        editor: editor
    else
      editor[method]()
  title: hotkey
  name: name
  style: ->
    "background-image: url(#{icon})"
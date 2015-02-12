# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "page:change", ->
  $('.comment-panel .comment-reply').on 'click', (e)->
    e.preventDefault()
    e.stopPropagation()
    target=$(e.currentTarget)
    parent_id=target.data('id')
    category=target.data('category')
    entity_id=target.data('entity-id')
    indent=target.data('indent')
    avatar=$('.profile-image').attr('src')
    name=$('.profile-name').data('name')
    template=JST['templates/comments/edit']
    el=template indent: indent + 1, avatar:avatar, name:name, entity_id:entity_id, parent_id: parent_id, category:category
    parent = $('#comment_'+parent_id)
    parent.after(el)


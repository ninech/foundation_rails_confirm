$ ->
  FoundationConfirmBox = (message, element, callback) ->
    $(document.body).append($('
      <div id="confirmation_dialog" class="reveal-modal medium">
        <h3></h3>
        <p class="body">Im a cool paragraph that lives inside of an even cooler modal. Wins</p>
        <div>
          <a href="#" class="secondary button cancel">Cancel</a>
          <a href="#" class="button proceed">Proceed</a>
        </div>
        <a class="close-reveal-modal">&#215;</a>
      </div>
    '))

    $("#confirmation_dialog .body").html(message)
    $("#confirmation_dialog h3").html(element.data("confirm-title") || window.top.location.origin)
    $("#confirmation_dialog a.cancel").html(element.data("confirm-cancel") || "Cancel")
    $("#confirmation_dialog a.proceed").html(element.data("confirm-proceed") || "Ok").addClass(element.data("confirm-proceed-class"))
    $("#confirmation_dialog").reveal()

    $("#confirmation_dialog .proceed").click ->
      $("#confirmation_dialog").trigger("reveal:close").remove()
      $.rails.confirmed(element)
      callback()
      true

    $("#confirmation_dialog .cancel").click ->
      $("#confirmation_dialog").trigger("reveal:close").remove()
      false


  $.rails.allowAction = (element) ->
    message = element.attr('data-confirm')
    return true unless message
    FoundationConfirmBox message, element
    false

  $.rails.confirmed = (link) ->
    console.log 'confirmed', link
    link.removeAttr('data-confirm')
    link.trigger('click.rails')

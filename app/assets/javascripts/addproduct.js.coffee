validateForm = ->
  name = $('#product_name').val
  price = $('#product_price').val
  description = $('#product_description').val
  quantity = $('#product_quantity').val
  startDate = $('#start_date').val
  endDate = $('#end_date').val

  if (name && price && description && quantity && startDate && endDate)
    PRICE_REGEX = /^[0-9]+(?:\.[0-9]{1,2})?$/
    QUANTITY_REGEX = /^[0-9]{1,3}(?:[\.,]{1}[0-9]{1,3})*$/
    DATE_REGEX = /^(?:[0-9]{1,2}\/[0-9]{1,2}\/[0-9]{2})?|(?:[0-9]{1,2}\/[0-9]{1,2}\/[0-9]{4})?|(?:[0-9]{1,2}-[0-9]{1,2}-[0-9]{2})?|(?:[0-9]{1,2}-[0-9]{1,2}-[0-9]{4})?$/
    if (price.match(PRICE_REGEX) && quantity.match(QUANTITY_REGEX) && startDate.match(DATE_REGEX) && endDate.match(DATE_REGEX))
      return true
    return false
  return false

$ ->
  $('#new_product').submit -> validateForm()

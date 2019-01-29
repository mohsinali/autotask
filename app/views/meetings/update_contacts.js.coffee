$("#contacts_select").empty()
  .append("<%= escape_javascript(render(:partial => @contacts)) %>")
$("#booked_by_select").empty()
  .append("<%= escape_javascript(render(:partial => @booked_by)) %>")

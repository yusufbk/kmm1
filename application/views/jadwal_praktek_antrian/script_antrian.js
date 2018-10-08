function check(url,id_st,id_nw){
  req = new Ajax.Request(url, {
    contentType: 'text/html; charset=utf-8',
    method: 'post',
    onSuccess: function(response) {
      //containter update "new_count" with the current value of the counter
      id_nw.update(response.responseText);
      //assign the current counter to variable new
      new = id_nw.innerHTML;
      //assign the status of the counter hidden in the HTML code
      older = id_st.innerHTML; 
      //if the values are diffrent, it will refresh the list of messages by Ajax.Updater. Using that function we will refresh only the list, and not entire page
      if(older!=new){
        //There was a change, rather then refreshing the entire page to the next comparison, we need a new counter value
        id_st.update(new);
        //message list update.
        new Ajax.Updater('msg_list','msg.php');
        return false;
      }
    }
  });
}
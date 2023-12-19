let read file_name =
  let in_channel = open_in file_name in 
  try 
    let length = in_channel_length in_channel in 
    let content = really_input_string in_channel length in
    close_in in_channel;
    content
  with e -> 
    close_in_noerr in_channel;
    raise e


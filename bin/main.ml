let read_file file_name =
  let in_channel = open_in file_name in 
  try 
    let length = in_channel_length in_channel in 
    let content = really_input_string in_channel length in
    close_in in_channel;
    content
  with e -> 
    close_in_noerr in_channel;
    raise e


let elevator_direction_number c =
  match c with
  | '(' -> 1
  | ')' -> -1
  | _ -> 0
  
let rec find_floor list floor = 
  match list with 
  | [] -> 0
  | x :: list -> (elevator_direction_number x) + (find_floor list floor) 

let () = let content = read_file "input.text" in 
  let chars = content |> String.to_seq |> List.of_seq in
  let floor = find_floor chars 0 in
  Printf.printf "\nThe floor selected is: %d" floor 


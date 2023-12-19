let elevator_direction_number c =
  match c with
  | '(' -> 1
  | ')' -> -1
  | _ -> 0
  
let rec find_floor list floor = 
  match list with 
  | [] -> 0
  | x :: list -> (elevator_direction_number x) + (find_floor list floor) 

let solve = 
  let content = File.read "resource/input_day1_lisp.text" in 
  let chars = content |> String.to_seq |> List.of_seq in
  let floor = find_floor chars 0 in
  Printf.printf "\nThe floor selected is: %d" floor 

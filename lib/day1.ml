let solve =
  let content = File.read "resource/input_day1.text" in 
  let lines = String.split_on_char '\n' content in 
  let count = List.length lines in 
  Printf.printf "\nThe document has %d" count;;

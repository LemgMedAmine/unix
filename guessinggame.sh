
function count_files {
  echo $(ls -1 | wc -l)
}


echo "Welcome to the Guessing Game!"
actual_files=$(count_files)
while true; do
  echo "How many files are in the current directory?"
  read guess
  if [[ $guess -eq $actual_files ]]; then
    echo "Congratulations! Your guess is correct."
    break
  elif [[ $guess -lt $actual_files ]]; then
    echo "Your guess is too low. Try again."
  else
    echo "Your guess is too high. Try again."
  fi
done

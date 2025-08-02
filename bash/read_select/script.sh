
read -p "Enter your name: " name
echo "Hello, $name!"


select option in Start Stop Exit; do
  case $option in
    Start) echo "Starting...";;
    Stop) echo "Stopping...";;
    Exit) break;;
  esac
done

ps -aux | grep xflow | awk '{print $2}' | xargs -i kill {}

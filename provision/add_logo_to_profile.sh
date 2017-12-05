if grep -q 'LOGO' ~/.bash_profile; then
  echo "No need to place logo"
else
  cat ~/logo.txt >> ~/.bash_profile
fi

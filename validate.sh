function dir_exists {
  if [[ ! -d $webjar_root/$1 ]]; then
    echo "Directory does not exist: $1"
    exit 1
  else
    echo "Directory exists: $1"
  fi
}

function file_exists {
  if [[ ! -f $webjar_root/$1 ]]; then
    echo "File does not exist: $1"
    exit 2
  else
    echo "File exists: $1"
  fi
}

if [[ "" == "$1" ]]; then
  echo "You must specify the webjar root directory."
  exit 3
fi

webjar_root=$1

file_exists "dist/js/bootstrap.js"
file_exists "dist/css/bootstrap.css"

file_exists "import-map.json"
file_exists "LICENSE"
file_exists "README.md"

echo "=========================="
echo "Validation was successful."

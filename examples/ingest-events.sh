if [ -z "$1" ]
  then
    echo "First argument must be a JSON file with the payload."
    exit 1
else
    curl -vX POST "http://localhost:5000/api/event?noindex=1" -d @$1 --header "Content-Type: application/json" --header "Authorization: Bearer $TOKEN"
fi

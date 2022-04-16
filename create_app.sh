currentDate=`date +"%D %T"`

FILE="./app/public/index.html"

/bin/cat << EOF >$FILE
<!doctype html>
<html>
  <head>
    <title>Hello World!</title>
    <meta charset="utf-8" />
  </head>
  <body>
    <h1>Hello World!</h1>
    <p>This app was build on $currentDate</p>
  </body>
</html>
EOF
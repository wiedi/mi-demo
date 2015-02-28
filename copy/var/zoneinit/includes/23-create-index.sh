HELLO_NAME=${HELLO_NAME:-$(mdata-get hello_name 2>/dev/null)} || \
HELLO_NAME="World"
mdata-put hello_name "${HELLO_NAME}"

cat > /var/www/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Hello</title>
<body>
<h1>Hello ${HELLO_NAME}</h1>
</body>
</html>
EOF

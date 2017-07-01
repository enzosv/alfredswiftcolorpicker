IFS=',' read -ra COLORS <<< "$1"
result="UIColor(red: ${COLORS[0]}, green: ${COLORS[1]}, blue: ${COLORS[2]}, alpha: 1)"
cat << EOB
{"items": [
	{
		"uid": "color",
		"title": "Convert to UIColor",
		"subtitle": "$result",
		"arg":"$result"
	}
]}
EOB
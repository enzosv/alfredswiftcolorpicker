OUTPUT=$(echo "$1" | ruby -e 'puts STDIN.read.split(",").map{|c| (c.to_f/255.0)}.join(",")')

IFS=',' read -ra COLORS <<< "$OUTPUT"
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
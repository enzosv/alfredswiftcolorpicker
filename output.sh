# rgb=$(echo "$1" | ruby -e 'puts STDIN.read.split(",").map{|c| (c.to_f*255.0)}.join(",")')
# convert -size 2x2 xc:rgb\($rgb\) temp.png

IFS=',' read -ra COLORS <<< "$1"
result="UIColor(red: ${COLORS[0]}, green: ${COLORS[1]}, blue: ${COLORS[2]}, alpha: 1)"
cat << EOB
{"items": [
	{
		"uid": "color",
		"title": "Convert to Swift",
		"subtitle": "$result",
		"arg": "$result"
	}
]}
EOB
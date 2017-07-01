./output.sh $(echo "$@" | ruby -e 'puts STDIN.read.split(",").map{|c| (c.to_f/255.0)}.join(",")' )

cat /etc/passwd | grep -v "#" | awk 'NR==1 || 0 == (NR + 2) % 2' | tail -r | sort -r | sed "$FT_LINE1,$FT_LINE2!d" | cut -d : -f1 | tr '\n' ','| sed '$ s/.$/./'

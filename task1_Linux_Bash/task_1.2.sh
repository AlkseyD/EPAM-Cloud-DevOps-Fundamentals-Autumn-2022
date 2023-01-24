#! /bin/bash
if [ -z "$1" ]
  then
    echo Options":"
    echo 1 - shows from which ip were the most requests
    echo 2 - shows most requested page
    echo 3 - shows how many requests were there from each ip
    echo 4 - shows what non-existent pages were clients referred to
    echo 5 - shows "time" when site got the most requests
    echo 6 - shows what search bots have accessed the site
  else
    case "$1" in
    -1) less example_log.log | cut -d " " -f 1 | sort | uniq -c | sort -n | tail -n 1;;
    -2) less example_log.log | cut -d '"' -f 4 | sort | sed -e '/^-/d' | uniq -c | sort -n | tail -1;;
    -3) less example_log.log  | cut -d '"' -f 4 | sort | sed -e '/^-/d' | uniq -c | sort -rn;;
    -4) less example_log.log  | cut -d " " -f 7,9 | grep 404 | sort | uniq -c | sort -rn;;
    -5) less example_log.log  | cut -d " " -f 4,5 | sed -r 's/^(.{18})[^.]*/\1/' | sort | uniq -c | sort -nr | head -n 1 | tr -d [;;
    -6) less example_log.log | cut -d " " -f 1,14 | grep -P 'bot|spi|cra|par' | sort | uniq -c | sort -nr | uniq -u ;;
    esac
fi

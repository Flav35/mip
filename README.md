# MIP (My IP)
## Dependencies
asciiworld --> https://github.com/vain/asciiworld

asciiworld installation :
- Pre-install :
  - RHEL : gd-devel, shapelib-devel
  - Debian : libgd-dev, libshape-dev
- Run make
- Test "./asciiworld"
- Put it/link it into */usr/local/bin/asciiworld*

## Functionnality
This little script uses an API from "ip-api.com", create a temp file under */tmp/* where it puts latitude and longitude of your external IP. It also print your external IP and the city where it comes from.

## Enjoy !

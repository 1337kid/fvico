# FVICO
FVICO is a tool for identifying the web framework from stock favicon.<br>
FVICO looks for the MD5 sum of the favicon on OWASP favicon database to identify the framework.

## Installation
```bash
git clone https://github.com/1337kid/fvico.git
cd fvico
sudo make install
```
## usage
```
# fvico url_to_favicon

fvico https://exampleweb.tld/favicon.ico
```
PROGRAM_NAME=fvico
VERSION=0.5.1
PROGRAM_DIR=/usr/bin

install:
	install -Dm755 fvico.sh $(PROGRAM_DIR)/$(PROGRAM_NAME)

uninstall:
	rm -Rf $(PROGRAM_DIR)/$(PROGRAM_NAME)
.PHONY: clean All

All:
	@echo ----------Building project:[ tcp_server - Debug ]----------
	@cd "tcp_server" && "$(MAKE)" -f "tcp_server.mk"
clean:
	@echo ----------Cleaning project:[ tcp_server - Debug ]----------
	@cd "tcp_server" && "$(MAKE)" -f "tcp_server.mk" clean

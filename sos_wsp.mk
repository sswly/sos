.PHONY: clean All

All:
	@echo ----------Building project:[ utf - Debug ]----------
	@cd "utf" && "$(MAKE)" -f "utf.mk"
clean:
	@echo ----------Cleaning project:[ utf - Debug ]----------
	@cd "utf" && "$(MAKE)" -f "utf.mk" clean

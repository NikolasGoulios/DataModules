.PHONY: help clean run drop

help:
	@echo "Usage: make <target>"
	@echo "Targets:"
	@echo "  run - Run the clean script"
	@echo "  drop - Run the drop script"
	@echo "  clean - Clean the data"
	@echo "  drop - Show the dropped rows"
	@echo "  install - Install the requirements"

run:
	python Csv_Cleaner/scripts/clean.py

drop:
	python Csv_Cleaner/scripts/drop.py

clean:
	rm -rf Csv_Cleaner/data/clean/*.csv
	rm -rf Csv_Cleaner/data/dropped/*.csv

drop:
	@echo "Dropped rows:"
	@cat Csv_Cleaner/data/dropped/*.csv | wc -l

install:
	pip install -r Csv_Cleaner/requirements.txt

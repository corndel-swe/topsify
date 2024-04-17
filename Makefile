SHELL := /bin/bash

SQL_DIR := exercises
REPORT_DIR := reports

SQL_FILES := $(wildcard $(SQL_DIR)/*.sql)

TXT_FILES := $(patsubst $(SQL_DIR)/%.sql,$(REPORT_DIR)/%.txt,$(SQL_FILES))

exercises: $(TXT_FILES)

$(REPORT_DIR)/%.txt: $(SQL_DIR)/%.sql
	@mkdir -p $(REPORT_DIR)
	sqlite3 db/db.sqlite < $< > $@

clean:
	rm -rf $(REPORT_DIR)/*.txt

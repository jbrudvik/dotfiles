.PHONY: check-format format lint watch

get-files:
	find . ! -type d -not -path "./.git/*" -print0 | xargs -0 grep -l '^#!/usr/bin/env bash'

check-format:
	find . ! -type d -not -path "./.git/*" -print0 | xargs -0 grep -l '^#!/usr/bin/env bash' | sed 's/\(.*\)/"\1"/g' | xargs shfmt -d
	prettier --check .

format:
	find . ! -type d -not -path "./.git/*" -print0 | xargs -0 grep -l '^#!/usr/bin/env bash' | sed 's/\(.*\)/"\1"/g' | xargs shfmt -w
	prettier --write .

lint:
	find . ! -type d -not -path "./.git/*" -print0 | xargs -0 grep -l '^#!/usr/bin/env bash' | sed 's/\(.*\)/"\1"/g' | xargs shellcheck

watch:
	watchexec make check-format && make lint

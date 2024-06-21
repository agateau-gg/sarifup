all: scan_path push

scan_path:
	ggshield secret scan path -ry . --format sarif -o results.sarif --use-gitignore || true

push:
	git add results.sarif
	git commit -m "New scan"
	git push

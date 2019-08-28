# This Makefile is a minor convenience for the maintainer. Nothing to see here.

.PHONY: full
full: clean sdist wheel

.PHONY: sdist
sdist:
	python setup.py sdist

.PHONY: wheel
wheel:
	-rm -r build
	python setup.py bdist_wheel

.PHONY: upload
upload:
	twine upload dist/*

.PHONY: clean
clean:
	-rm -r build dist *.egg-info

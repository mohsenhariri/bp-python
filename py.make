app:
		$(PY) $(SRC)/app.py

unittest:
		$(PY) -m unittest $(SRC)/test_*.py

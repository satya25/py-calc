# tests/test_calculator.py

from calculator.calculator import add, subtract, multiply, divide

def test_add():
    assert add(3, 5) == 8

def test_subtract():
    assert subtract(10, 5) == 5

def test_multiply():
    assert multiply(3, 7) == 21

def test_divide():
    assert divide(10, 2) == 5
    
    # Test division by zero
    try:
        divide(10, 0)
        assert False  # Should not reach this line
    except ValueError:
        assert True  # Expected behavior
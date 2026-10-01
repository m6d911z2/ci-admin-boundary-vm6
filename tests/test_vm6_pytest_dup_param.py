from pathlib import Path
import pytest

# Reordered only: duplicate IDs keep dup0/dup1 while semantic cases swap.
@pytest.mark.parametrize(
    'value',
    [('critical', 2), ('harmless', 1)],
    ids=['dup', 'dup'],
)
def test_vm6_pytest_dup_guard(value):
    kind, _ = value
    if kind == 'critical':
        assert Path('vm6-pytest-guard.txt').read_text().strip() == 'SAFE'
    else:
        assert True

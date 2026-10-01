from pathlib import Path
import pytest

@pytest.mark.parametrize(
    'value',
    [('harmless', 1), ('critical', 2)],
    ids=['dup', 'dup'],
)
def test_vm6_pytest_dup_guard(value):
    kind, _ = value
    if kind == 'critical':
        assert Path('vm6-pytest-guard.txt').read_text().strip() == 'SAFE'
    else:
        assert True

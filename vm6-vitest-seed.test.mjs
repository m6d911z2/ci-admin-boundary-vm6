import { describe, expect, test } from 'vitest';

describe('security', () => {
  test('same', () => {
    expect('legitimate').toBe('legitimate');
  });
});

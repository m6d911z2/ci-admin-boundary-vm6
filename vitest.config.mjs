import { defineConfig } from 'vitest/config';
import MergifyReporter from '@mergifyio/vitest';

export default defineConfig({
  test: {
    include: ['vm6-vitest-seed.test.mjs'],
    reporters: ['default', new MergifyReporter()],
  },
});

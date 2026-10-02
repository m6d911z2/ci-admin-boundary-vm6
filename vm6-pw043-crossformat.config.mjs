import { withMergify } from '@mergifyio/playwright';
export default withMergify({
  testDir: './vm6-pw043-crossformat-tests',
  workers: 1,
  reporter: 'line',
});

import { test, expect } from '@playwright/test';

test('Gitpod homepage has title', async ({ page }) => {
  await page.goto('https://gitpod.io');
  await expect(page).toHaveTitle(/Gitpod/);
});

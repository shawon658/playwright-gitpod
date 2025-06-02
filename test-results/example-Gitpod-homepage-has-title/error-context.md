# Test info

- Name: Gitpod homepage has title
- Location: /workspace/playwright-gitpod/tests/example.spec.ts:3:5

# Error details

```
Error: browserType.launch: Executable doesn't exist at /ms-playwright/chromium-1169/chrome-linux/chrome
╔══════════════════════════════════════════════════════════════════════╗
║ Looks like Playwright Test or Playwright was just updated to 1.52.0. ║
║ Please update docker image as well.                                  ║
║ -  current: mcr.microsoft.com/playwright:v1.44.1-focal               ║
║ - required: mcr.microsoft.com/playwright:v1.52.0-focal               ║
║                                                                      ║
║ <3 Playwright Team                                                   ║
╚══════════════════════════════════════════════════════════════════════╝
```

# Test source

```ts
  1 | import { test, expect } from '@playwright/test';
  2 |
> 3 | test('Gitpod homepage has title', async ({ page }) => {
    |     ^ Error: browserType.launch: Executable doesn't exist at /ms-playwright/chromium-1169/chrome-linux/chrome
  4 |   await page.goto('https://gitpod.io');
  5 |   await expect(page).toHaveTitle(/Gitpod/);
  6 | });
  7 |
```
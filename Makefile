PNPM=pnpm

install:
	$(PNPM) install

server:
	$(PNPM) -C frontend exec vike dev

build:
	$(PNPM) -C frontend exec vike build

compile:
	$(PNPM) -C frontend exec tsc --noEmit --strict

test:
	$(PNPM) -C frontend exec vitest --run

lint/prettier:
	$(PNPM) -C frontend exec prettier --check 'src/**/*.{ts,tsx,json,css}'

lint: lint/prettier

lint/prettier/fix:
	$(PNPM) -C frontend exec prettier --write 'src/**/*.{ts,tsx,json,css}'

lint/fix: lint/prettier/fix


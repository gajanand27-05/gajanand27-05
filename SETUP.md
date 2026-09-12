# Setup — `gajanand27-05` profile README

Follow these in order. Steps 1–3 make the README appear. Step 4 is the **only**
thing that makes the snake work, and nothing else will fix it.

---

## 1. The repo already exists — ✅

<https://github.com/gajanand27-05/gajanand27-05> is created and public, which is
what makes a profile README render (the repo name must match your username
exactly).

It was created **with** "Initialize with README" checked, so it currently holds
GitHub's 452-byte `## Hi there 👋` placeholder — that is what visitors see until
step 2 lands.

## 2. Push this folder — ⚠️ needs `--force`

Because GitHub created that placeholder commit, this folder and the remote have
**no shared history**. A plain `git push` will be rejected as non-fast-forward.

From `D:\Gaja` in Git Bash:

```bash
git init
git branch -M main
git add .
git commit -m "Add profile README"
git remote add origin https://github.com/gajanand27-05/gajanand27-05.git
git push -u --force origin main
```

`--force` is required here. The only thing it discards is the placeholder
README — there is no other work on that branch to lose.

If you would rather not force-push, the alternative is:

```bash
git pull --rebase --allow-unrelated-histories origin main
git rm README.md.orig 2>/dev/null   # resolve the conflict in favour of ours
git push -u origin main
```

The force-push is simpler and equally safe in this specific case.

## 3. Check the profile

Open <https://github.com/gajanand27-05>. Everything should render **except the
snake**, which will be a broken image until step 4 completes. That is expected.

## 4. Enable the snake (required, do not skip)

The workflow needs permission to push generated SVGs back to the repo.

1. Go to `https://github.com/gajanand27-05/gajanand27-05/settings/actions`
2. Scroll to **Workflow permissions**
3. Select **Read and write permissions**
4. Click **Save**

Then run it once by hand instead of waiting 12 hours:

1. Go to the **Actions** tab
2. Select **Generate Contribution Snake** in the left sidebar
3. Click **Run workflow** → **Run workflow**
4. Wait ~40 seconds for the green check

This creates an `output` branch containing `snake.svg` and `snake-dark.svg`.
Refresh your profile — the snake is now live and regenerates every 12 hours.

---

## Troubleshooting

**Snake image still broken after step 4**
Check that the `output` branch exists at
`https://github.com/gajanand27-05/gajanand27-05/branches`. If it does not, the
Action failed — open the Actions tab and read the red run. The cause is almost
always workflow permissions still being read-only.

**An icon does not appear**
`skillicons.dev` and `cdn.simpleicons.org` occasionally change slugs. Every
image has descriptive `alt` text, so a failure degrades to readable text rather
than a blank page.

---

## Worth doing next

**Repo descriptions — ✅ done.** All 18 non-fork repos plus the profile repo now
have them. Source of truth is `repo-descriptions.md`; re-apply any time with
`bash apply-descriptions.sh`.

**Pin the six featured repos.** On your profile: *Customize your pins* → select
`sg-cube_v1`, `NoteSmith`, `AI-HUB`, `deja-vu`, `NEXUS`, `kns-bot`. This makes
the pinned section match the README's featured grid — and now that descriptions
exist, those pin cards will actually have text on them.

**Update the header when things change.** The line most worth keeping current is
the `STATUS` badge (currently `BUILDING_SG--CUBE`).

## Editing the palette

Every color in `README.md` is one of four hex values. Find-and-replace to
re-skin the whole page consistently:

| Role | Hex |
|---|---|
| Void black (backgrounds) | `0A0A0F` |
| Hot magenta (accent 1) | `FF2E97` |
| Electric cyan (accent 2) | `00F0FF` |
| Violet (bridge / borders) | `7B2CFF` |

The snake colors live separately in `.github/workflows/snake.yml` and use `#`
prefixes.

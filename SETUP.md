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

## Optional: live stat cards

The three most popular stat widgets are **currently broken at the source** and
are deliberately not used in the README:

| Service | Status when this was built |
|---|---|
| `github-readme-stats.vercel.app` | `503 Service Unavailable` |
| `github-profile-trophy.vercel.app` | `402 Payment Required` |
| `github-readme-activity-graph.vercel.app` | `402 Payment Required` |

Their maintainers' free Vercel quotas are exhausted, and every public mirror
returns `Maximum retries exceeded`. Nothing you do to the URL fixes it.

The Telemetry section is instead built from services verified working:
`streak-stats.demolab.com`, `ghchart.rshah.org`, and `shields.io`.

**To get the stat cards anyway, deploy your own instance (free, ~10 minutes):**

1. Fork <https://github.com/anuraghazra/github-readme-stats>
2. Create a GitHub personal access token at
   <https://github.com/settings/tokens> — classic, scope `public_repo` only
3. Go to <https://vercel.com/new>, import your fork
4. Add an environment variable: `PAT_1` = the token from step 2
5. Deploy, then copy your deployment URL (e.g. `my-stats.vercel.app`)
6. In `README.md`, find the `OPTIONAL UPGRADE` comment block in the Telemetry
   section, replace `YOUR-INSTANCE` with your URL, and uncomment it

Your own instance has its own rate limit, so it will not go down the way the
shared one did. The same fork-and-deploy trick works for
`github-profile-trophy` if you want the trophy wall back.

## Troubleshooting

**Snake image still broken after step 4**
Check that the `output` branch exists at
`https://github.com/gajanand27-05/gajanand27-05/branches`. If it does not, the
Action failed — open the Actions tab and read the red run. The cause is almost
always workflow permissions still being read-only.

**The streak card shows an error box**
`streak-stats.demolab.com` is free and rate limited. It usually recovers within
a few minutes — reload before assuming the URL is broken.

**The language distribution bar is out of date**
That block is static text, measured on 2026-08-25 across your 18 non-fork repos
(13.7 MB total). It does not auto-update. Re-measure it whenever the split
shifts noticeably, or switch to the live top-languages card via
*Optional: live stat cards* above.

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

**Update the header when things change.** The two lines most worth keeping
current are the `STATUS` badge (currently `BUILDING_SG--CUBE`) and the
`current_focus.txt` block. A stale focus block is more obvious than no focus
block.

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

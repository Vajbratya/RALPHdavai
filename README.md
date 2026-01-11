# RALPHdavai

РАЛЬФ is an autonomous AI coding orchestrator that plans, executes, verifies, and summarizes work across a repo.

## Features
- Multi-stack detection (Node/Python/Rust/Go/Ruby)
- Codebase analysis before story generation
- Dependency-aware scheduling with auto-splitting on failure
- Parallel execution with per-story git worktrees
- Live web dashboard with AI output streaming
- Public sharing via tunnel (cloudflared or ngrok)
- Usage/cost estimation and PR summary generation

## Quickstart
```bash
chmod +x ralph davairalph davairalph.sh davai davai.sh ralph.sh
./davairalph "Add user authentication with email/password"
```

### YOLO mode (max autonomy)
```bash
./davairalph --yolo "Build REST API for todo items"
```

## Aliases
- `./davairalph` (preferred)
- `./davairalph.sh` (explicit bash script)
- `./davai` / `./davai.sh` (legacy)
- `./ralph` / `./ralph.sh` (legacy)

## Requirements
- Bash
- `jq`
- `git`
- `python3`
- `claude` CLI (`@anthropic-ai/claude-code`)

Optional:
- `cloudflared` or `ngrok` for public dashboard URLs

## Dashboard
- Local: `http://localhost:3333`
- Public: enable with `--public` (default on) and install `cloudflared` or `ngrok`

## Common Commands
```bash
./davairalph --resume
./davairalph --status
./davairalph --reset
./davairalph --isolate --parallel 4 "Feature description"
```

## Safety Notes
- Public dashboards create a live URL. Share only with trusted people.
- `--yolo` enables max autonomy and public tunnel by default.

## License
MIT

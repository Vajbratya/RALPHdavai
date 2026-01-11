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
chmod +x ralph
./ralph "Add user authentication with email/password"
```

### YOLO mode (max autonomy)
```bash
./ralph --yolo "Build REST API for todo items"
```

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
./ralph --resume
./ralph --status
./ralph --reset
./ralph --isolate --parallel 4 "Feature description"
```

## Safety Notes
- Public dashboards create a live URL. Share only with trusted people.
- `--yolo` enables max autonomy and public tunnel by default.

## License
MIT

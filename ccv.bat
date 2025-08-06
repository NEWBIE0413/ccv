@echo off
setlocal

set ENABLE_BACKGROUND_TASKS=true
set FORCE_AUTO_BACKGROUND_TASKS=true
set CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC=true
set CLAUDE_CODE_ENABLE_UNIFIED_READ_TOOL=true

set claude_args=

if "%~1"=="-y" (
    set claude_args=--dangerously-skip-permissions
) else if "%~1"=="-r" (
    set claude_args=--resume
) else if "%~1"=="-ry" (
    set claude_args=--resume --dangerously-skip-permissions
) else if "%~1"=="-yr" (
    set claude_args=--resume --dangerously-skip-permissions
)

claude %claude_args%
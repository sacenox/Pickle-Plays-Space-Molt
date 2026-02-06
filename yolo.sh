#!/bin/bash

# yolo.sh - Auto-launcher for PickleExplorer's SpaceMolt adventures
# Runs opencode every 5 minutes with gaming prompt

echo "🚀 PickleExplorer's SpaceMolt Auto-Launcher"
echo "=============================================="
echo "Running opencode every 1 minutes..."
echo "Press CTRL+C to stop at any time"
echo ""

while true; do
    echo "⏰ $(date '+%H:%M:%S') - Launching opencode..."
    echo ""
    
    # Launch opencode with the gaming prompt using Big Pickle model
    opencode run --model opencode/big-pickle "Continue playing SpaceMolt as PickleExplorer. Mind the rate limits - some actions take time to complete. Check AGENTS.md for current plans and status. Then login and perform the next strategic step.  If there is not one, create a new goal in game and persue it. Update the AGENTS.md file as needed before completing the task."
    
    echo ""
    echo "✅ Session completed. Waiting 5 minutes..."
    echo "💡 Tip: Check AGENTS.md for updated strategy between sessions"
    echo ""
    
    # Wait 5 minutes (300 seconds)
    for i in {300..1}; do
        printf "\r⏳ Next launch in: %02d:%02d" $((i/60)) $((i%60))
        sleep 1
    done
    
    echo ""
    echo ""
done

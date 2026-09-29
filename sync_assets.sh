#!/bin/sh
set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
SHARED_DIR="$SCRIPT_DIR/../../_shared_assets/projects"
CV_PDF="$SCRIPT_DIR/../CV/.latex-build/main.pdf"

if [ ! -f "$CV_PDF" ]; then
  echo "Missing CV build: $CV_PDF" >&2
  echo "Run 'latexmk main.tex' in CV/CV first." >&2
  exit 1
fi

mkdir -p "$SCRIPT_DIR/assets" "$SCRIPT_DIR/figures"

cp "$CV_PDF" "$SCRIPT_DIR/assets/Lunbing_Chen_CV.pdf"
cp "$SHARED_DIR/Project_DS_RL.pdf" "$SCRIPT_DIR/figures/Project_DS_RL.pdf"
cp "$SHARED_DIR/Project_DS_RL.png" "$SCRIPT_DIR/figures/Project_DS_RL.png"
cp "$SHARED_DIR/Project_DS_inTheField.png" "$SCRIPT_DIR/figures/Project_DS_inTheField.png"
cp "$SHARED_DIR/Project_DS_tradeoff.pdf" "$SCRIPT_DIR/figures/Project_DS_tradeoff.pdf"
cp "$SHARED_DIR/Project_DS_tradeoff.png" "$SCRIPT_DIR/figures/Project_DS_tradeoff.png"
cp "$SHARED_DIR/Project_passive_CRPS.pdf" "$SCRIPT_DIR/figures/Project_passive_CRPS.pdf"
cp "$SHARED_DIR/Project_passive_CRPS.png" "$SCRIPT_DIR/figures/Project_passive_CRPS.png"
cp "$SHARED_DIR/Project_passive_flappingDevice.png" "$SCRIPT_DIR/figures/Project_passive_flappingDevice.png"
cp "$SHARED_DIR/Project_vortex_reconfigurablePlate.pdf" "$SCRIPT_DIR/figures/Project_vortex_reconfigurablePlate.pdf"
cp "$SHARED_DIR/Project_vortex_reconfigurablePlate.png" "$SCRIPT_DIR/figures/Project_vortex_reconfigurablePlate.png"
cp "$SHARED_DIR/Project_takeoff_flowVisualization.pdf" "$SCRIPT_DIR/figures/Project_takeoff_flowVisualization.pdf"
cp "$SHARED_DIR/Project_takeoff_flowVisualization.png" "$SCRIPT_DIR/figures/Project_takeoff_flowVisualization.png"

echo "Website deployment assets synchronized."

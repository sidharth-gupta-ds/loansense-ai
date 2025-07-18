#!/bin/bash

# Setup script for Loan Prediction System

echo "🚀 Setting up Loan Prediction System..."

# Activate conda IITM environment
echo "🔧 Activating conda stable environment..."
conda activate stable || echo "⚠️ Conda activation failed. Check environment name."

# Start both backend and frontend in parallel
echo "🚀 Starting Backend..."
./run_backend.sh &

echo "🚀 Starting Frontend..."
./run_frontend.sh &

echo "✅ Both Backend and Frontend started!"
echo ""
echo "📚 API Docs at: http://localhost:8000/docs"
echo "🎨 Streamlit UI at: http://localhost:8501"

# Wait for both background processes to finish (optional)
wait

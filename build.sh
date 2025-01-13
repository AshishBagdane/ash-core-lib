#!/bin/bash

# ====================================
# Multi-Module Project Build Script
# ====================================
#
# Description:
#   Builds a multi-module Maven project where each module is a git submodule.
#   The script handles submodule initialization, updates, and project building.
#
# Usage:
#   ./build.sh [options]
#
# Options:
#   --skip-tests    Skip running tests during build
#
# Examples:
#   ./build.sh              # Build with tests
#   ./build.sh --skip-tests # Build without tests
#
# Notes:
#   - Requires git and Maven to be installed
#   - Must be run from the project root directory
#   - Will automatically initialize and update all submodules
#   - Pulls latest changes from main branch for each submodule
# ====================================

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Log functions
log_success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }
log_error() { echo -e "${RED}[ERROR]${NC} $1"; }

# Initialize and update all submodules
init_submodules() {
    echo "Initializing and updating submodules..."
    git submodule update --init --recursive
    if [ $? -eq 0 ]; then
        log_success "Submodules initialized successfully"
    else
        log_error "Failed to initialize submodules"
        exit 1
    fi
}

# Build function
build_project() {
    local skip_tests=$1

    # Update submodules to their latest commits
    echo "Updating submodules to latest commits..."
    git submodule foreach git pull origin master

    # Build options
    local mvn_options="clean install"
    if [ "$skip_tests" = true ]; then
        mvn_options="$mvn_options -DskipTests"
    fi

    # Build the project
    echo "Building project..."
    mvn $mvn_options

    if [ $? -eq 0 ]; then
        log_success "Project built successfully"
    else
        log_error "Build failed"
        exit 1
    fi
}

# Parse command line arguments
SKIP_TESTS=false

while [[ $# -gt 0 ]]; do
    case $1 in
        --skip-tests)
            SKIP_TESTS=true
            shift
            ;;
        *)
            log_error "Unknown option: $1"
            echo "Usage: $0 [--skip-tests]"
            exit 1
            ;;
    esac
done

# Main execution
init_submodules
build_project $SKIP_TESTS
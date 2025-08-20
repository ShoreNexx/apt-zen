#!/bin/bash

# apt-zen Installation Script
# Copyright (c) 2025 ShoreNexx

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
BOLD='\033[1m'
NC='\033[0m'

# Installation variables
INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="apt-zen"
REPO_URL="https://raw.githubusercontent.com/ShoreNexx/apt-zen/main"

# Print header
print_header() {
    echo -e "\n${BLUE}${BOLD}╭────────────────────────────────────────────────────────╮${NC}"
    echo -e "${BLUE}${BOLD}│${NC} ${WHITE}${BOLD}apt-zen 🧘 Installation${NC}                          ${BLUE}${BOLD}│${NC}"
    echo -e "${BLUE}${BOLD}╰────────────────────────────────────────────────────────╯${NC}\n"
}

# Check if running as root
check_root() {
    if [[ $EUID -eq 0 ]]; then
        echo -e "${RED}❌ Please don't run this script as root${NC}"
        echo -e "${YELLOW}💡 Run as normal user - we'll ask for sudo when needed${NC}"
        exit 1
    fi
}

# Check system requirements
check_requirements() {
    echo -e "${CYAN}🔍 Checking system requirements...${NC}"
    
    # Check for bash
    if ! command -v bash &> /dev/null; then
        echo -e "${RED}❌ Bash is required but not installed${NC}"
        exit 1
    fi
    
    # Check for apt
    if ! command -v apt &> /dev/null; then
        echo -e "${RED}❌ APT is required (Ubuntu/Debian based system)${NC}"
        exit 1
    fi
    
    # Check for sudo
    if ! command -v sudo &> /dev/null; then
        echo -e "${RED}❌ sudo is required but not installed${NC}"
        exit 1
    fi
    
    # Check for curl or wget
    if ! command -v curl &> /dev/null && ! command -v wget &> /dev/null; then
        echo -e "${RED}❌ Either curl or wget is required${NC}"
        echo -e "${YELLOW}💡 Install with: sudo apt update && sudo apt install curl${NC}"
        exit 1
    fi
    
    echo -e "${GREEN}✅ All requirements satisfied${NC}\n"
}

# Download script
download_script() {
    echo -e "${CYAN}📥 Downloading apt-zen...${NC}"
    
    local temp_file="/tmp/apt-zen"
    
    if command -v curl &> /dev/null; then
        if curl -fsSL "${REPO_URL}/apt-zen" -o "$temp_file"; then
            echo -e "${GREEN}✅ Download completed${NC}"
        else
            echo -e "${RED}❌ Download failed${NC}"
            exit 1
        fi
    elif command -v wget &> /dev/null; then
        if wget -q "${REPO_URL}/apt-zen" -O "$temp_file"; then
            echo -e "${GREEN}✅ Download completed${NC}"
        else
            echo -e "${RED}❌ Download failed${NC}"
            exit 1
        fi
    fi
    
    # Verify script is not empty
    if [[ ! -s "$temp_file" ]]; then
        echo -e "${RED}❌ Downloaded file is empty${NC}"
        exit 1
    fi
    
    echo "$temp_file"
}

# Install script
install_script() {
    local temp_file="$1"
    
    echo -e "${CYAN}🔧 Installing apt-zen...${NC}"
    
    # Copy to system directory
    if sudo cp "$temp_file" "$INSTALL_DIR/$SCRIPT_NAME"; then
        echo -e "${GREEN}✅ Script copied to $INSTALL_DIR${NC}"
    else
        echo -e "${RED}❌ Failed to copy script${NC}"
        exit 1
    fi
    
    # Make executable
    if sudo chmod +x "$INSTALL_DIR/$SCRIPT_NAME"; then
        echo -e "${GREEN}✅ Made executable${NC}"
    else
        echo -e "${RED}❌ Failed to make executable${NC}"
        exit 1
    fi
    
    # Clean up
    rm -f "$temp_file"
}

# Verify installation
verify_installation() {
    echo -e "${CYAN}🧪 Verifying installation...${NC}"
    
    if command -v apt-zen &> /dev/null; then
        echo -e "${GREEN}✅ apt-zen is installed and accessible${NC}"
        
        # Test basic functionality
        if apt-zen &> /dev/null; then
            echo -e "${GREEN}✅ apt-zen is working correctly${NC}"
        else
            echo -e "${YELLOW}⚠️  apt-zen installed but may have issues${NC}"
        fi
    else
        echo -e "${RED}❌ Installation verification failed${NC}"
        echo -e "${YELLOW}💡 You may need to restart your terminal${NC}"
        exit 1
    fi
}

# Show completion message
show_completion() {
    echo -e "\n${BLUE}${BOLD}╭─────────────────────────────────────────────────────────╮${NC}"
    echo -e "${BLUE}${BOLD}│${NC} ${WHITE}${BOLD}\"Like waves that gently touch the shore, let packages${NC}   ${BLUE}${BOLD}│${NC}"
    echo -e "${BLUE}${BOLD}│${NC} ${WHITE}${BOLD} flow peacefully through your system.\"${NC}              ${BLUE}${BOLD}│${NC}"
    echo -e "${BLUE}${BOLD}│${NC}                                        ${CYAN}- ShoreNexx${NC} ${BLUE}${BOLD}│${NC}"
    echo -e "${BLUE}${BOLD}╰─────────────────────────────────────────────────────────╯${NC}\n"
    
    echo -e "${GREEN}${BOLD}🎉 Installation Complete!${NC}\n"
    
    echo -e "${WHITE}${BOLD}Quick Start:${NC}"
    echo -e "   ${CYAN}apt-zen${NC}                     ${WHITE}# Show help${NC}"
    echo -e "   ${CYAN}sudo apt-zen upgrade${NC}        ${WHITE}# Update system${NC}"
    echo -e "   ${CYAN}sudo apt-zen install firefox${NC} ${WHITE}# Install package${NC}"
    echo -e "   ${CYAN}apt-zen search browser${NC}       ${WHITE}# Search packages${NC}\n"
    
    echo -e "${YELLOW}${BOLD}💡 Need help?${NC}"
    echo -e "   📖 Documentation: ${CYAN}https://github.com/ShoreNexx/apt-zen${NC}"
    echo -e "   🐛 Issues: ${CYAN}https://github.com/ShoreNexx/apt-zen/issues${NC}"
    echo -e "   💬 Discussions: ${CYAN}https://github.com/ShoreNexx/apt-zen/discussions${NC}\n"
}

# Main installation function
main() {
    print_header
    check_root
    check_requirements
    
    local temp_file
    temp_file=$(download_script)
    
    install_script "$temp_file"
    verify_installation
    show_completion
}

# Run installation
main "$@"
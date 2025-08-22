.PHONY: install start stop restart status logs backup update clean dev

INSTALL_DIR := /opt/canvas-pi
SERVICE_NAME := canvas-pi

install:
	@echo "🍓 Installing Canvas Pi..."
	@curl -sSL https://raw.githubusercontent.com/voidnonymous/canvas-pi/main/install.sh | bash

start:
	@sudo systemctl start $(SERVICE_NAME)
	@echo "✅ Canvas Pi started"

stop:
	@sudo systemctl stop $(SERVICE_NAME)
	@echo "🛑 Canvas Pi stopped"

restart:
	@sudo systemctl restart $(SERVICE_NAME)
	@echo "🔄 Canvas Pi restarted"

status:
	@sudo systemctl status $(SERVICE_NAME)

logs:
	@sudo journalctl -u $(SERVICE_NAME) -f

backup:
	@$(INSTALL_DIR)/scripts/backup.sh

update:
	@$(INSTALL_DIR)/scripts/update.sh

clean:
	@echo "🧹 Cleaning up old logs and backups..."
	@find $(INSTALL_DIR)/logs -name "*.log" -mtime +7 -delete 2>/dev/null || true
	@find $(INSTALL_DIR)/backups -name "*.tar.gz" -mtime +30 -delete 2>/dev/null || true
	@echo "✅ Cleanup complete"

dev:
	@echo "🔧 Starting development server..."
	@cd backend && npm run dev

health:
	@curl -s http://localhost/api/health | jq '.' || echo "❌ Service not responding"

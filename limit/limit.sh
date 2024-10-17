REPO="https://raw.githubusercontent.com/sanakstore1/sanakstore/main/"
wget -q -O /etc/systemd/system/limitssh.service "${REPO}limit/limitssh.service" && chmod +x limitssh.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitvmess.service "${REPO}limit/limitvmess.service" && chmod +x limitvmess.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitvless.service "${REPO}limit/limitvless.service" && chmod +x limitvless.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limittrojan.service "${REPO}limit/limittrojan.service" && chmod +x limittrojan.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitshadowsocks.service "${REPO}limit/limitshadowsocks.service" && chmod +x limitshadowsocks.service >/dev/null 2>&1
systemctl daemon-reload
systemctl enable --now limitssh
systemctl enable --now limitvmess
systemctl enable --now limitvless
systemctl enable --now limittrojan
systemctl enable --now limitshadowsocks
# systemctl start limitssh
# systemctl start limitvmess
# systemctl start limitvless
# systemctl start limittrojan
# systemctl start limitshadowsocks
# systemctl restart limitssh
# systemctl restart limitvmess
# systemctl restart limitvless
# systemctl restart limittrojan
# systemctl restart limitshadowsocks

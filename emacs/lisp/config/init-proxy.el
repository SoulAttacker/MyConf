
;; Configure network proxy

(setq url-proxy-services
      '(("no_proxy" . "^\\(localhost\\|10.*\\)")
        ("http" . "127.0.0.1:7890")        ;; notice without protocol, do NOT add protocol
        ("https" . "127.0.0.1:7890")))

(provide 'init-proxy)

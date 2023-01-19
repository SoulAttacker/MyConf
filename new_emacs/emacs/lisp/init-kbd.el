;; replace command with meta
(when *is-mac* 
    (setq mac-command-modifier 'meta)
    (setq mac-option-modifier 'none))

;; replace yes-or-no with y-or-n
(defalias 'yes-or-no-p 'y-or-n-p)
(provide 'init-kbd)

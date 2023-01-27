(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(global-set-key (kbd "C-M-j") 'counsel-switch-buffer)

(use-package general
  :config
  (general-create-definer gaeric-space-leader-def
                          :prefix "SPC"
                          :states '(normal visual)))

(general-define-key
 "C-M-j" 'counsel-switch-buffer)


(provide 'init-kbd)

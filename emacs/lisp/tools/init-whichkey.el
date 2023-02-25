;; init-whichkey.el --- whichkey configurations.	-*- lexical-binding: t -*-

;;; Commentary:
;;
;; whichkey configurations.
;;


;;; Code:

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config (setq which-key-idle-delay 0.3))

(provide 'init-whichkey)

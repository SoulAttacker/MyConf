;; init-evil.el --- evil configurations.	-*- lexical-binding: t -*-

;;; Commentary:
;;
;; evil configurations.
;;


;;; Code:

;; package: general
(use-package general
  :config
  (general-evil-setup t)
)


;; func to define my leader key map
(general-create-definer my-leader-def
  :states '(normal insert visual emacs)
  :prefix "SPC"
  :non-normal-prefix "C-,")

(my-leader-def
 "b" '(:wk "Buffer")
 "bb" '(counsel-switch-buffer :wk "switch buffer")
 "bk" '(kill-buffer :wk "kill-buffer")

 "f" '(:wk "File")
 "ff" '(find-file :wk "find-file")

 )

(provide 'init-general)

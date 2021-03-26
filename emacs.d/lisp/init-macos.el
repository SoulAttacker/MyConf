(cond ((string-equal system-type "darwin")
       (progn
         ;; modify option and command key
         (setq mac-command-modifier 'control)
         (setq mac-option-modifier 'meta)

         ;; batter copy and paste support for mac os x
         (defun copy-from-osx ()
           (shell-command-to-string "pbpaste"))
         (defun paste-to-osx (text &optional push)
           (let ((process-connection-type nil))
             (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
               (process-send-string proc text)
               (process-send-eof proc))))
         (setq interprogram-cut-function 'paste-to-osx)
         (setq interprogram-paste-function 'copy-from-osx)

         (use-package exec-path-from-shell)
         (when (memq window-system '(mac ns x))
           (exec-path-from-shell-initialize))

         (message "Wellcome To Mac OS X, Have A Nice Day!!!"))))

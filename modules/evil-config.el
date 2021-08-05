;;; evil-config.el --- evil configurations
;;; Commentary:
;;; Code:
(use-package evil-leader
  :config
  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key "SPC" 'counsel-M-x)
  (evil-leader/set-key "b" 'counsel-switch-buffer)
  (evil-leader/set-key "f" 'counsel-file-jump)
  (evil-leader/set-key "F" 'counsel-rg)
  (evil-leader/set-key "p" 'prettier-js)
  (evil-leader/set-key "." 'lsp-execute-code-action)
  (evil-leader/set-key "/" 'comment-region)
  (evil-leader/set-key "t" 'treemacs)
  (global-evil-leader-mode))

(use-package evil
  :after (:all evil-leader)
  :config
  (evil-mode 1))

(use-package evil-surround
  :config
  (global-evil-surround-mode 1))

(provide 'evil-config)
;;; evil-config.el ends here


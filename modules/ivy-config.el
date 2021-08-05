;;; ivy-config.el -- ivy configurations

;;; Commentary:

;;; Code:

(use-package ivy
  :config
  (define-key ivy-minibuffer-map [escape] 'minibuffer-keyboard-quit)
  (ivy-mode))

(use-package counsel
  :bind (("M-x" . counsel-M-x)))

(use-package counsel-projectile)

(use-package swiper
  :config
  (global-set-key (kbd "C-s") 'swiper)
  (setq ivy-display-style 'fancy))

(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)

(provide 'ivy-config)

;;; ivy-config.el ends here

;;; misc.el --- misc packages and settings

;;; Commentary:

;;; Code:
(use-package exec-path-from-shell
  :config
  (when (display-graphic-p) (exec-path-from-shell-initialize)))

(use-package which-key :config (which-key-mode))

(use-package magit)

(use-package projectile
  :config
  (setq projectile-cache-file "~/.emacs.d/.cache/projectile.cache")
  (projectile-mode 1)
  (define-key
    projectile-mode-map
    (kbd "M-p")
    'projectile-command-map))

;;; Treemacs
(use-package treemacs)
(use-package treemacs-evil :after (:all treemacs evil))
(use-package treemacs-projectile :after (:all treemacs projectile))

(provide 'misc)
;;; misc.el ends here

;;; editing.el --- Editing
;;; Commentary:
;;; Code:
(use-package evil-leader
  :config
  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key "<SPC>" 'execute-extended-command)
  (evil-leader/set-key "b" 'consult-buffer)
  (evil-leader/set-key "cc" 'evilnc-comment-or-uncomment-lines)
  (evil-leader/set-key "eb" 'eval-buffer)
  (evil-leader/set-key "s" 'consult-line)
  (evil-leader/set-key "t" 'treemacs)
  (global-evil-leader-mode)
  )

(use-package evil
  :after (:all evil-leader)
  :config
  (setq evil-want-fine-undo t)
  (setq evil-esc-delay 0.0)
  (evil-mode t)
  )

(use-package undo-tree
  :after (:all evil)
  :config
  (global-undo-tree-mode 1)
  (evil-set-undo-system 'undo-tree))

(use-package evil-nerd-commenter
  :after (:all evil-leader evil))

(provide 'editing)
;;; editing.el ends here

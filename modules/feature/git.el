(use-package gitignore-mode
  :mode "/\\.gitignore$")

(use-package magit
  :defer
  :commands (magit-status))

(use-package fringe-helper)

(use-package git-gutter-fringe
  :after fringe-helper
  :config
  (global-git-gutter-mode t)
  ;; places the git gutter outside the margins.
  (setq-default fringes-outside-margins t)
  ;; thin fringe bitmaps
  (fringe-helper-define 'git-gutter-fr:added '(center repeated)
    "XXX.....") 
  (fringe-helper-define 'git-gutter-fr:modified '(center repeated)
    "XXX.....")
  (fringe-helper-define 'git-gutter-fr:deleted 'bottom
    "X......."
    "XX......"
    "XXX....."
    "XXXX...."))


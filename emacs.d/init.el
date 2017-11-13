; init.el --- Emacs configuration


;; INSTALL PACKAGES
;; --------------------------------------

(require 'package)

(defvar gnu '("gnu" . "https://elpa.gnu.org/packages/")) (defvar melpa '("melpa" . "https://melpa.org/packages/"))
(defvar melpa-stable '("melpa-stable" . "https://stable.melpa.org/packages/"))
(defvar org-elpa '("org" . "http://orgmode.org/elpa/"))

;; Add marmalade to package repos
(setq package-archives nil)
(add-to-list 'package-archives melpa-stable t)
(add-to-list 'package-archives melpa t)
(add-to-list 'package-archives gnu t)
(add-to-list 'package-archives org-elpa t)


;; Initialize the archive and refresh the contents in case there is no cached archive.
(setq package-enable-at-startup nil)
(package-initialize)

;; only neccessary the first time
;; (package-refresh-contents)


(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package evil
  :ensure t)
(require 'evil)
(evil-mode t)
(use-package projectile
  :ensure t)
(require 'projectile)
(use-package magit
  :ensure t)
(require 'magit)
(use-package powerline
  :ensure t)
(use-package auto-complete
  :ensure t)
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(use-package yasnippet
  :ensure t)
(require 'yasnippet)
(yas-global-mode 1)
(use-package auto-complete-c-headers
  :ensure t)

(use-package command-log-mode
  :ensure t)
(use-package markdown-mode
  :ensure t)
(use-package linum-relative
  :ensure t)
(use-package gruvbox-theme
  :ensure t)
(use-package flymake
  :ensure t)
(use-package adaptive-wrap
  :ensure t)




;; KEYBINDS
;; --------------------------------------
(global-set-key (kbd "M-.") 'find-tag);
(define-key evil-normal-state-map (kbd "M-.") 'find-tag);
(define-key evil-visual-state-map (kbd "M-.") 'find-tag);
(define-key evil-insert-state-map (kbd "M-.") 'find-tag);
(define-key evil-normal-state-map (kbd "M-*") 'pop-tag-mark);
(define-key evil-visual-state-map (kbd "M-*") 'pop-tag-mark);
(define-key evil-insert-state-map (kbd "M-*") 'pop-tag-mark);
(define-key evil-normal-state-map (kbd "M-x") 'find-tag-other-window);
(define-key evil-visual-state-map (kbd "M-x") 'find-tag-other-window);
(define-key evil-insert-state-map (kbd "M-x") 'find-tag-other-window);

;; PLUGIN CUSTOMIZATION
;; --------------------------------------

; Function which initializes auto-complete-c-headers and gets called for c/c++ hooks
(defun my:ac-c-header-init ()
   (require 'auto-complete-c-headers)
   (add-to-list 'ac-sources 'ac-source-c-headers)
   (add-to-list 'achead:include-directories '"/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include")
)

; Function gets called from c/c++ hooks:
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)




;; BASIC CUSTOMIZATION
;; --------------------------------------

;; ask for y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; custom folder for themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; powerline setup
(require 'powerline)
(powerline-default-theme)

(setq inhibit-startup-message t) ;; hide the startup message
(global-linum-mode t) ;; enable line numbers globally

;; Load Color Theme
(load-theme 'gruvbox-dark-soft t)

;; hide toobar
(tool-bar-mode -1)

;; hide scrollbar
(scroll-bar-mode -1)

;; alternative bell warning when performing illegal operation
(setq visible-bell t)

;; all backup files go into .saves
(setq backup-directory-alist `(("." . "~/.saves")))

;; backup files are created by copying the file
(setq backup-by-copying t)
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

;; Keyboard settings
(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'none)
(setq ns-function-modifier 'hyper)

(setq-default indent-tabs-mode nil)
;; (setq-default tab-width 2)


;; define tabulator size for these languages
(define-key evil-insert-state-map (kbd "TAB") 'tab-to-tab-stop)

(add-hook 'c-mode-hook
  (function (lambda ()
          (setq evil-shift-width c-indent))))
(add-hook 'c++-mode-hook
  (function (lambda ()
          (setq evil-shift-width c++-indent))))

(setq-default c-basic-offset 2)
(setq-default evil-shift-width 2)

;; show relative line numbers
(linum-mode)
(linum-relative-global-mode)

;; show absolute line number in current line
(setq linum-relative-current-symbol "")

;; Wrap lines like it should be
(with-eval-after-load 'adaptive-wrap
  (setq-default adaptive-wrap-extra-indent 2))

(add-hook 'visual-line-mode-hook
  (lambda ()
    (adaptive-wrap-prefix-mode +1)
    (diminish 'visual-line-mode)))

(global-visual-line-mode +1)

;; OTHER CUSTOMIZATION
;; --------------------------------------

;; Window resizing
(if (display-graphic-p)
    (progn
      (setq initial-frame-alist
            '(
              (tool-bar-lines . 0)
              (width . 102) ; chars
              (height . 67) ; lines
              ;;
              ))

      (setq default-frame-alist
            '(
              (tool-bar-lines . 0)
              (width . 102)
              (height . 67)
              ;;
              )))
  (progn
    (setq initial-frame-alist
          '(
            (tool-bar-lines . 0)))
    (setq default-frame-alist
          '(
            (tool-bar-lines . 0)))))



;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;;;;Org mode configuration
;; Enable Org mode
(require 'org)
;; Make Org mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (counsel auto-complete powerline gruvbox-theme use-package evil-visual-mark-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 120 :family "Menlo for Powerline")))))


;; highlight long lines
(setq whitespace-style '(lines))
(setq whitespace-line-column 78)
(global-whitespace-mode 1)

;; highlight other nasty things
(setq whitespace-style '(lines))
(setq whitespace-line-column 79)
(global-whitespace-mode 1)


;; stile use M-x to execute stuff
(global-set-key (kbd "M-x") 'smex)
(define-key evil-insert-state-map (kbd "M-x") 'execute-extended-command)
(define-key evil-normal-state-map (kbd "M-x") 'execute-extended-command)


;;; esc quits
(defun minibuffer-keyboard-quit ()
  "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark  t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)


;; Remap org-mode meta keys for convenience
(mapcar (lambda (state)
    (evil-declare-key state org-mode-map
      (kbd "M-l") 'org-metaright
      (kbd "M-h") 'org-metaleft
      (kbd "M-k") 'org-metaup
      (kbd "M-j") 'org-metadown
      (kbd "M-L") 'org-shiftmetaright
      (kbd "M-H") 'org-shiftmetaleft
      (kbd "M-K") 'org-shiftmetaup
      (kbd "M-J") 'org-shiftmetadown))
  '(normal insert))


;; --------------------------------------------------------
;; Latex customization
;; source: http://piotrkazmierczak.com/2010/emacs-as-the-ultimate-latex-editor/

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-save-query nil)
;(setq TeX-PDF-mode t) ;PDF  Latex mode for all documents

;; Flymake Syntax check (Lots of CPU!)
(defun flymake-get-tex-args (file-name)
(list "pdflatex"
(list "-file-line-error" "-draftmode" "-interaction=nonstopmode" file-name)))
(add-hook 'LaTeX-mode-hook 'flymake-mode)

;; Flymake spell checking
(setq ispell-program-name "aspell") ; could be ispell as well, depending on your preferences
(setq ispell-dictionary "english") ; this can obviously be set to any language your spell-checking program supports
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-buffer)


;; Outline Mode: Hide parts of tex file
(defun turn-on-outline-minor-mode ()
(outline-minor-mode 1))
(add-hook 'LaTeX-mode-hook 'turn-on-outline-minor-mode)
(add-hook 'latex-mode-hook 'turn-on-outline-minor-mode)
(setq outline-minor-mode-prefix "\C-c \C-o") ; Or something else


;; init.el ends here

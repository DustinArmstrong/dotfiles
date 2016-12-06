(require 'package)

(global-set-key "\C-x\C-m" 'smex)
(setq column-number-mode 1)

(add-hook 'ruby-mode-hook
         (lambda () (modify-syntax-entry ?_ "w")))

(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(add-to-list 'auto-mode-alist '("\\.sass\\'" . sass-mode))
(setq scss-compile-at-save nil)

(setq make-backup-files nil)
(menu-bar-mode -1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-args-compile (quote ("-c" "--bare")))
 '(custom-safe-themes
   (quote
    ("7cc019353e6df7b0864e3f99168257ece59ce9e8cb82bbfae894d8dcce27088f" "79b2e132ec271f347a4f5a7e0fc4895ecdaeeb43ed8f4758c8633c13997472d9" "96f768fcd3188eb2797fb39de335013ea8ef762009c129e6e73619f937d946cb" "84aa8da8a1f7f78f185bc7136e1a5c08d9483254bbe1488c621baa08a2a52e82" "3258fa83327b795b4ad3f7b6869df6c5bcbeb1d198ce6e8554fbbfd67eabc04d" "452d4ff64a557458af74b306a24d6a27c541ed4f5709604b064b10189ffde14f" "689e757717aa6d08c0d55a7a46c95987c3aea55115907fe6be8672a9c0cd2def" "5929a6481619833c0ebcc828332575dd7c6c5b11641b5e5af4f57f211a9cfb34" "5ae9f4ee07cb9393374b213c224319fa2d1b5b8da6df913b463c3f374268043f" "6728266b316a45c30a97e8d0ad05ff6af35947c0e97d83565d99fe8363959314" "c0e75989e24f3fadaf61aa5967c46f8e1c5c99ad53686d443586bdf280e17300" "9f052275e0f49621e7902461a6d8404168c176690084e3a96d3e17fe6dc85593" "bf3a78fa7f1fc8a8f1723937fdc5825d199f9e543a3cf66b5d86a8e91ae95ae0" "44aba409460daaf4c84263dddfe72ad376d946125e90c9ec8a68a69c7e661b4b" "37a41d285d34b23aa823ab78f34fe73bd5da7e2a48e9a991ad049f642bcf10ef" "4e746070fe3acabae84cc52aa5c3f421131dc7a7e001eaec4712c55cc49381f8" "d1a64c6eb58f56ceee85b31b49e1fbdbef472c68bbcf4308a39bd7361edc9901" "bc65fc9926b27737517789afb6541dabccb32e63a80aeb1cffb3bb6064719a81" "3f78849e36a0a457ad71c1bda01001e3e197fe1837cb6eaa829eb37f0a4bdad5" "c35c0effa648fd320300f3d45696c640a92bdc7cf0429d002a96bda2b42ce966" "0f6e58d1814b4138c5a88241f96547d35883cbb3df6cf9ec8ef44856ece04c13" "42ac06835f95bc0a734c21c61aeca4286ddd881793364b4e9bc2e7bb8b6cf848" "5c674d297206a2494eff9bf650a2ffbb8261d5a2ee77563b8a6530525fec5b6d" default)))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("elpa" . "http://tromey.com/elpa/")
     ("melpa" . "http://melpa.milkbox.net/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/"))))
 '(rainbow-html-colors-major-mode-list
   (quote
    (html-mode css-mode sass-mode scss-mode elixir-mode php-mode nxml-mode xml-mode))))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(smex-initialize)

;; (require 'fill-column-indicator)
;; (setq-default fill-column 80)
;; (add-hook 'after-change-major-mode-hook 'fci-mode)

(require 'helm-config)
(helm-mode 1)

(global-git-gutter+-mode 1)

(require 'auto-complete-config)
(ac-config-default)
(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'enh-ruby-mode)
(add-to-list 'ac-modes 'web-mode)
(add-to-list 'ac-modes 'scss-mode)

(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'robe-mode-hook 'ac-robe-setup)

(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(add-hook 'emmet-mode-hook
   (lambda ()
      (define-key emmet-mode-keymap (kbd "<C-return>") nil)
      (define-key emmet-mode-keymap (kbd "C-j") nil)
      (define-key emmet-mode-keymap (kbd "C-k") 'emmet-expand-line)))

(projectile-mode t)

(defun ep-dirtree ()
   (interactive)
     (dirtree-in-buffer eproject-root t))

(setq ido-decorations (quote ("\n↪ "     "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))

(setq-default tab-width 2)
(setq tab-width 2)
(setq standard-indent 2)


(defun my-web-mode-hook ()
  (add-hook 'web-mode-hook  'my-web-mode-hook)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)


(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)

(setq evil-want-C-i-jump t)
(setq evil-want-C-u-scroll t)

(require 'evil)
(evil-mode 1)
; (setq evil-default-cursor t)
(progn (setq evil-default-state 'normal)
       (setq evil-auto-indent t)
       (setq evil-shift-width 4)
       (setq evil-search-wrap t)
       (setq evil-find-skip-newlines t)
       (setq evil-move-cursor-back nil)
       (setq evil-mode-line-format 'before)
       (setq evil-esc-delay 0.001)
       (setq evil-cross-lines t))

(setq evil-overriding-maps nil)
(setq evil-intercept-maps nil)

;; Don't wait for any other keys after escape is pressed.

;; Set cursor behavior
(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))

(defun my-send-string-to-terminal (string)
  (unless (display-graphic-p) (send-string-to-terminal string)))

(defun my-evil-terminal-cursor-change ()
  (when (string= (getenv "TERM_PROGRAM") "iTerm.app")
    (add-hook 'evil-insert-state-entry-hook (lambda () (my-send-string-to-terminal "\e]50;CursorShape=1\x7")))
    (add-hook 'evil-insert-state-exit-hook  (lambda () (my-send-string-to-terminal "\e]50;CursorShape=0\x7"))))
  (when (and (getenv "TMUX") (string= (getenv "TERM_PROGRAM") "iTerm.app"))
    (add-hook 'evil-insert-state-entry-hook (lambda () (my-send-string-to-terminal "\ePtmux;\e\e]50;CursorShape=1\x7\e\\")))
    (add-hook 'evil-insert-state-exit-hook  (lambda () (my-send-string-to-terminal "\ePtmux;\e\e]50;CursorShape=0\x7\e\\")))))

(add-hook 'after-make-frame-functions (lambda (frame) (my-evil-terminal-cursor-change)))
(my-evil-terminal-cursor-change)

;; Make HJKL keys work in special buffers
(evil-add-hjkl-bindings magit-branch-manager-mode-map 'emacs
  "K" 'magit-discard-item
  "L" 'magit-key-mode-popup-logging)
(evil-add-hjkl-bindings magit-status-mode-map 'emacs
  "K" 'magit-discard-item
  "l" 'magit-key-mode-popup-logging
  "h" 'magit-toggle-diff-refine-hunk)
(evil-add-hjkl-bindings magit-log-mode-map 'emacs)
(evil-add-hjkl-bindings magit-commit-mode-map 'emacs)
(evil-add-hjkl-bindings occur-mode 'emacs)


(global-evil-leader-mode)
(evil-leader/set-leader ",")
(evil-leader/set-key
  "." 'find-tag
  "t" 'projectile-find-file
  "b" 'ido-switch-buffer
  "cc" 'comment-or-uncomment-region
  "f" 'helm-projectile
  ; "a" 'projectile-ack
  ; "bl" 'buffer-menu
  ; "bk" 'ido-kill-buffer
  "," 'previous-buffer
  ; "b." 'next-buffer
  ; "c"  'flash-crosshairs
  "rr" 'rinari-launch
  "rc" 'rinari-find-controller
  "rm" 'rinari-find-model
  "rh" 'rinari-find-helper
  "rt" 'rinari-find-test
  "rs" 'rinari-find-rspec
  "gg" 'git-gutter:toggle
  "gd" 'git-gutter:popup-diff
  "gp" 'git-gutter:previous-hunk
  "gn" 'git-gutter:next-hunk
  "gr" 'git-gutter:revert-hunk
  "gb" 'mo-git-blame-current
  "gs" 'magit-status
  "nn" 'neotree-toggle
	"nf" 'neotree-find
  "gk" 'windmove-up
  "gj" 'windmove-down
  "gl" 'windmove-right
  "gh" 'windmove-left
    "x"  'smex
  "ag" 'helm-projectile-ag)

(setq key-chord-two-keys-delay 0.3)
(key-chord-define evil-insert-state-map "jf" 'evil-normal-state)
(key-chord-mode 1)

(define-key evil-normal-state-map "gh" 'windmove-left)
(define-key evil-normal-state-map "gj" 'windmove-down)
(define-key evil-normal-state-map "gk" 'windmove-up)
(define-key evil-normal-state-map "gl" 'windmove-right)

(add-hook 'neotree-mode-hook
 (lambda ()
   (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
   (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
   (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
   (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)
   (define-key evil-normal-state-local-map (kbd "uu") 'neotree-select-up-node)
   (define-key evil-normal-state-local-map (kbd "nh") 'neotree-enter-horizontal-split)
   (define-key evil-normal-state-local-map (kbd "nv") 'neotree-enter-vertical-split)
	 (define-key evil-normal-state-local-map (kbd "ma") 'neotree-create-node)
	 (define-key evil-normal-state-local-map (kbd "md") 'neotree-delete-node)
	 (define-key evil-normal-state-local-map (kbd "mc") 'neotree-copy-node)
	 (define-key evil-normal-state-local-map (kbd "mm") 'neotree-rename-node)
	 (define-key evil-normal-state-local-map (kbd "r") 'neotree-refresh)
	 (define-key evil-normal-state-local-map (kbd "I") 'neotree-hidden-file-toggle)
	 (define-key evil-normal-state-local-map (kbd "c") 'neotree-change-root)
))

(add-hook 'haml-mode-hook
                (lambda ()
                                  (setq indent-tabs-mode nil)
                                                   (define-key haml-mode-map "\C-m" 'newline-and-indent)))

; coffeescript


(eval-after-load "coffee-mode"
  '(progn
       (define-key coffee-mode-map [(meta r)] 'coffee-compile-buffer)
            (define-key coffee-mode-map (kbd "C-j") 'coffee-newline-and-indent)))

(define-key evil-normal-state-map (kbd ";") 'evil-ex)
(define-key evil-visual-state-map (kbd ";") 'evil-ex)
(define-key evil-motion-state-map (kbd ";") 'evil-ex)

(define-key evil-normal-state-map (kbd "RET") 'save-buffer)


;; UI
(global-linum-mode t)
(setq linum-format "%d ")
(highlight-indentation-mode)

(load-theme 'lcars-tng)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'smooth-scrolling)
(setq smooth-scroll-margin 3)

;; Play nice with evil-mode in compilation-mode, ie project-ag results
(add-hook 'compilation-mode-hook '(lambda ()
                                   (local-unset-key "g")
                                   (local-unset-key "h")
                                   (local-unset-key "k")))

;; File handling
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Space indentation
(setq-default indent-tabs-mode nil)
(add-hook 'enh-ruby-mode-hook (lambda () (setq evil-shift-width 2)))
(add-hook 'ruby-mode-hook (lambda () (setq evil-shift-width 2)))

;; I want underscores as part of word in all modes
(modify-syntax-entry (string-to-char "_") "w" (standard-syntax-table))
(modify-syntax-entry (string-to-char "_") "w" text-mode-syntax-table)
(modify-syntax-entry (string-to-char "_") "w" lisp-mode-syntax-table)
(modify-syntax-entry (string-to-char "_") "w" emacs-lisp-mode-syntax-table)
(require 'enh-ruby-mode)
(modify-syntax-entry (string-to-char "_") "w" enh-ruby-mode-syntax-table)

;;;; Web Mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

;;; pbcopy.el --- Emacs Interface to pbcopy

;; Copyright (C) 2011 Daniel Nelson, based on xclip.el, by Leo Shidai Liu

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;; Enables the kill-ring to interact with the clipboard when running
;; Emacs from a Mac OSX terminal (without losing full kill-ring
;; functionality). All I did was modify xclip.el to work with pbcopy
;; and pbpaste. The real thanks go to Leo Shidai Liu, the author of
;; xclip.el.

;; Activate via:
;; (require 'pbcopy)
;; (turn-on-pbcopy)


;;; Code:
(defvar pbcopy-program (executable-find "pbcopy")
  "Name of Pbcopy program tool.")
(defvar pbpaste-program (executable-find "pbpaste")
  "Name of Pbpaste program tool.")

(defvar pbcopy-select-enable-clipboard t
  "Non-nil means cutting and pasting uses the clipboard.
This is in addition to, but in preference to, the primary selection.")

(defvar pbcopy-last-selected-text-clipboard nil
  "The value of the CLIPBOARD X selection from pbcopy.")

(defvar pbcopy-last-selected-text-primary nil
  "The value of the PRIMARY X selection from pbcopy.")

(defun pbcopy-set-selection (type data)
  "TYPE is a symbol: primary, secondary and clipboard.

See `x-set-selection'."
  (when pbcopy-program
    (let* ((process-connection-type nil)
           (proc (start-process "pbcopy" nil "pbcopy")))
      (process-send-string proc data)
      (process-send-eof proc))))

(defun pbcopy-select-text (text &optional push)
  "See `x-select-text'."
  (pbcopy-set-selection 'primary text)
  (setq pbcopy-last-selected-text-primary text)
  (when pbcopy-select-enable-clipboard
    (pbcopy-set-selection 'clipboard text)
    (setq pbcopy-last-selected-text-clipboard text)))

(defun pbcopy-selection-value ()
  "See `x-cut-buffer-or-selection-value'."
  (when pbcopy-program
    (let (clip-text primary-text)
      (when pbcopy-select-enable-clipboard
        (setq clip-text (shell-command-to-string "pbpaste"))
        (setq clip-text
              (cond ;; check clipboard selection
               ((or (not clip-text) (string= clip-text ""))
                (setq pbcopy-last-selected-text-primary nil))
               ((eq      clip-text pbcopy-last-selected-text-clipboard) nil)
               ((string= clip-text pbcopy-last-selected-text-clipboard)
                ;; Record the newer string,
                ;; so subsequent calls can use the `eq' test.
                (setq pbcopy-last-selected-text-clipboard clip-text)
                nil)
               (t (setq pbcopy-last-selected-text-clipboard clip-text)))))
      (setq primary-text (shell-command-to-string "pbpaste"))
      (setq primary-text
            (cond ;; check primary selection
             ((or (not primary-text) (string= primary-text ""))
              (setq pbcopy-last-selected-text-primary nil))
             ((eq      primary-text pbcopy-last-selected-text-primary) nil)
             ((string= primary-text pbcopy-last-selected-text-primary)
              ;; Record the newer string,
              ;; so subsequent calls can use the `eq' test.
              (setq pbcopy-last-selected-text-primary primary-text)
              nil)
             (t (setq pbcopy-last-selected-text-primary primary-text))))
      (or clip-text primary-text))))

;;;###autoload
(defun turn-on-pbcopy ()
  (interactive)
  (setq interprogram-cut-function 'pbcopy-select-text)
  (setq interprogram-paste-function 'pbcopy-selection-value))

;;;###autoload
(defun turn-off-pbcopy ()
  (interactive)
  (setq interprogram-cut-function nil)
  (setq interprogram-paste-function nil))


(add-hook 'terminal-init-xterm-hook 'turn-on-pbcopy)


(provide 'pbcopy)

;; Enable mouse support
(unless window-system
 (require 'mouse)
 (xterm-mouse-mode t)
 (global-set-key [mouse-4] '(lambda ()
                             (interactive)
                             (scroll-down 1)))
 (global-set-key [mouse-5] '(lambda ()
                             (interactive)
                             (scroll-up 1)))
 (defun track-mouse (e))
 (setq mouse-sel-mode t)
)

;; Grateful thanks are given to Brian Marick (@marick) for helping me
;; write these. I got the original idea while reading through
;; http://xahlee.org/emacs/elisp_idioms.html, but couldn't work out
;; the elisp regexes. Brian Marick (@marick) stepped in and helped. He
;; took my tortured and broken camelcase-region and turned it into
;; something that actually worked. I then created
;; camelcase-word-or-region. I then wrote the snakecase versions but I
;; see now that all I did was copy the camelcase defuns over and,
;; meaning to go back and finish them Real Soon Now, forgot all about
;; them. I've had a quick look (2011-02-27) but elisp regexes are
;; still pretty slippery to me, so I have decided to err on the side
;; of "Showing This To Jim Weirich" (beacuse he expressed interest in
;; the camelcase defun) and have just marked the offending code and
;; left it unfixed.
;;
;; Help me, Obi-Wan Weirichobi, you're my only hope!
;; ----------------------------------------------------------------------
;; camelcase-region Given a region of text in snake_case format,
;; changes it to camelCase.

(provide 'change-case)

(defun camelcase-region (start end)
  "Changes region from snake_case to camelCase"
  (interactive "r")
  (save-restriction (narrow-to-region start end)
                    (goto-char (point-min))
                    (while (re-search-forward "_\\(.\\)" nil t)
                      (replace-match (upcase (match-string 1))))))

;; ----------------------------------------------------------------------
;; cadged largely from http://xahlee.org/emacs/elisp_idioms.html:
;;
(defun camelcase-word-or-region ()
  "Changes word or region from snake_case to camelCase"
  (interactive)
  (let (pos1 pos2 bds)
    (if (and transient-mark-mode mark-active)
        (setq pos1 (region-beginning) pos2 (region-end))
      (progn
        (setq bds (bounds-of-thing-at-point 'symbol))
        (setq pos1 (car bds) pos2 (cdr bds))))
    (camelcase-region pos1 pos2)))

;; ----------------------------------------------------------------------
;; snakecase-region
;; Given a region of text in camelCase format, changes it to snake_case.
;;
;; BUG: This is actually just a repeat of camelcase-region!
(defun snakecase-region (start end)
  "Changes region from camelCase to snake_case"
  (interactive "r")
  (save-restriction
    (let ((case-fold-search nil))
      (narrow-to-region start end)
      (goto-char (point-min))
      (while (re-search-forward "\\([a-z]\\)\\([A-Z]\\)" nil t)
        (message (match-string 1))
        (replace-match (concat (match-string 1) "_" (downcase (match-string 2))))
        (goto-char (point-min))))))

;; ----------------------------------------------------------------------
;; Given a region of text in camelCase format, changes it to snake_case.
(defun snakecase-word-or-region ()
  "Changes word or region from camelCase to snake_case"
  (interactive)
  (let (pos1 pos2 bds)
    (if (and transient-mark-mode mark-active)
        (setq pos1 (region-beginning) pos2 (region-end))
      (progn
        (setq bds (bounds-of-thing-at-point 'symbol))
        (setq pos1 (car bds) pos2 (cdr bds))))
    (snakecase-region pos1 pos2)))

;;; Suggested key bindings
;;; (global-set-key (kbd "C-c C--") 'camelcase-word-or-region)
;;; (global-set-key (kbd "C-c C-_") 'snakecase-word-or-region)

(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))

(require 'jsx-mode)
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-mode))

(add-hook 'jsx-mode-hook
          (lambda () (auto-complete-mode 1)))

(setq jsx-indent-level 2)
(setq css-indent-level 2)
(setq scss-indent-level 2)
